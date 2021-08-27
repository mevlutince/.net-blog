using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Filters;
using ProgrammersBlog.Services.Abstract;
using Microsoft.Extensions.DependencyInjection;

namespace ProgrammersBlog.Mvc.Attributes
{
    //nerede kullanacagımızı belirttik sınıf veya metot üzerinde ekullanacagımızı belirttik ve bix detail metotu üzereinde kullanacagız
    [AttributeUsage(AttributeTargets.Class|AttributeTargets.Method)]
    public class ViewCountFilterAttribute:Attribute,IAsyncActionFilter
    {
        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            //bu işlemi detail action'na göre kodalayacagız detail'a parametre olarak gelen deger articleId ve bunu aldık
            var articleId = context.ActionArguments["articleId"];
            if (articleId is not null)
            {
                string articleValue = context.HttpContext.Request.Cookies[$"article{articleId}"]; // article22 article1 article55
                if (string.IsNullOrEmpty(articleValue))// true ise daha önce okunmadıgı anlamına geliyor
                {
                    Set($"article{articleId}", articleId.ToString(), 1, context.HttpContext.Response);
                    var articleService = context.HttpContext.RequestServices.GetService<IArticleService>();
                    await articleService.IncreaseViewCountAsync(Convert.ToInt32(articleId));
                    await next();//View'ın yüklenmesini saglar
                }
            }
            await next();
        }
        /// <summary>  
        /// set the cookie  
        /// </summary>  
        /// <param name="key">key=.Cookies[$"article{articleId}"] olacak (unique indentifier)</param>  
        /// <param name="value">value ={articleId} olacak to store in cookie object</param>  
        /// <param name="expireTime">expiration time</param>  
        public void Set(string key, string value, int? expireTime, HttpResponse response)
        {
            CookieOptions option = new CookieOptions();

            if (expireTime.HasValue)
                option.Expires = DateTime.Now.AddYears(expireTime.Value);
            else
                option.Expires = DateTime.Now.AddMonths(6);

            response.Cookies.Append(key, value, option);
        }

        /// <summary>  
        /// Delete the key  
        /// </summary>  
        /// <param name="key">Key</param>  
        public void Remove(string key, HttpResponse response)
        {
            response.Cookies.Delete(key);
        }

    }
}
