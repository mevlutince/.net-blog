USE [master]
GO
/****** Object:  Database [UdemyProgrammersBlog]    Script Date: 08/27/2021 18:54:23 ******/
CREATE DATABASE [UdemyProgrammersBlog] ON  PRIMARY 
( NAME = N'UdemyProgrammersBlog', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\UdemyProgrammersBlog.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UdemyProgrammersBlog_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\UdemyProgrammersBlog_log.LDF' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UdemyProgrammersBlog] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UdemyProgrammersBlog].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UdemyProgrammersBlog] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET ANSI_NULLS OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET ANSI_PADDING OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET ARITHABORT OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET AUTO_CLOSE ON
GO
ALTER DATABASE [UdemyProgrammersBlog] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [UdemyProgrammersBlog] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [UdemyProgrammersBlog] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [UdemyProgrammersBlog] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET  ENABLE_BROKER
GO
ALTER DATABASE [UdemyProgrammersBlog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [UdemyProgrammersBlog] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [UdemyProgrammersBlog] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [UdemyProgrammersBlog] SET  READ_WRITE
GO
ALTER DATABASE [UdemyProgrammersBlog] SET RECOVERY SIMPLE
GO
ALTER DATABASE [UdemyProgrammersBlog] SET  MULTI_USER
GO
ALTER DATABASE [UdemyProgrammersBlog] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [UdemyProgrammersBlog] SET DB_CHAINING OFF
GO
USE [UdemyProgrammersBlog]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[Logged] [datetime2](7) NOT NULL,
	[Level] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Logger] [nvarchar](250) NULL,
	[Callsite] [nvarchar](max) NULL,
	[Exception] [nvarchar](max) NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Logs] ON
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (1, N'DESKTOP-9U4GSOJ', CAST(0x072069D5FD52EA420B AS DateTime2), N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware+<Invoke>d__9.MoveNext', N'System.InvalidOperationException: Unable to resolve service for type ''Microsoft.Extensions.Logging.ILogger'' while attempting to activate ''ProgrammersBlog.Mvc.Filters.MvcExceptionFilter''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method248(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.TypeFilterAttribute.CreateInstance(IServiceProvider serviceProvider)
   at Microsoft.AspNetCore.Mvc.Filters.DefaultFilterProvider.ProvideFilter(FilterProviderContext context, FilterItem filterItem)
   at Microsoft.AspNetCore.Mvc.Filters.DefaultFilterProvider.OnProvidersExecuting(FilterProviderContext context)
   at Microsoft.AspNetCore.Mvc.Filters.FilterFactory.CreateUncachedFiltersCore(IFilterProvider[] filterProviders, ActionContext actionContext, List`1 filterItems)
   at Microsoft.AspNetCore.Mvc.Filters.FilterFactory.GetAllFilters(IFilterProvider[] filterProviders, ActionContext actionContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvokerCache.GetCachedResult(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvokerProvider.OnProvidersExecuting(ActionInvokerProviderContext context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionInvokerFactory.CreateInvoker(ActionContext actionContext)
   at Microsoft.AspNetCore.Mvc.Routing.ActionEndpointFactory.<>c__DisplayClass7_0.<CreateRequestDelegate>b__0(HttpContext context)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.Invoke(HttpContext httpContext)
--- End of stack trace from previous location ---
   at NToastNotify.NtoastNotifyAjaxToastsMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)
   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.StatusCodePagesMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (2, N'DESKTOP-9U4GSOJ', CAST(0x0770E3C94353EA420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.Exception: Hata!
   at ProgrammersBlog.Mvc.Controllers.HomeController.About() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Controllers\HomeController.cs:line 47
   at lambda_method414(Closure , Object , Object[] )
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (3, N'DESKTOP-9U4GSOJ', CAST(0x0730B6AD4F53EA420B AS DateTime2), N'Error', N'Object reference not set to an instance of an object.', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at ProgrammersBlog.Mvc.Controllers.HomeController.Contact() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Controllers\HomeController.cs:line 54
   at lambda_method426(Closure , Object , Object[] )
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (4, N'DESKTOP-9U4GSOJ', CAST(0x077010125653EA420B AS DateTime2), N'Error', N'Data is Null. This method or property cannot be called on Null values.', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.Data.SqlTypes.SqlNullValueException: Data is Null. This method or property cannot be called on Null values.
   at ProgrammersBlog.Services.Concrete.ArticleManager.GetAllByNonDeletedAsync() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Services\Concrete\ArticleManager.cs:line 164
   at ProgrammersBlog.Mvc.Areas.Admin.Controllers.ArticleController.Index() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Areas\Admin\Controllers\ArticleController.cs:line 44
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.TaskOfIActionResultExecutor.Execute(IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeActionMethodAsync>g__Awaited|12_0(ControllerActionInvoker invoker, ValueTask`1 actionResultValueTask)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeNextActionFilterAsync>g__Awaited|10_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (5, N'DESKTOP-9U4GSOJ', CAST(0x07E05F353564EA420B AS DateTime2), N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke', N'System.InvalidOperationException: A view component named ''NTostNotify'' could not be found. A view component must be a public non-abstract class, not contain any generic parameters, and either be decorated with ''ViewComponentAttribute'' or have a class name ending with the ''ViewComponent'' suffix. A view component must not be decorated with ''NonViewComponentAttribute''.
   at Microsoft.AspNetCore.Mvc.ViewComponents.DefaultViewComponentHelper.InvokeAsync(String name, Object arguments)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewComponentHelperExtensions.InvokeAsync(IViewComponentHelper helper, String name)
   at AspNetCore.Views_Shared__ContactLayout.<ExecuteAsync>b__17_1() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Views\Shared\_ContactLayout.cshtml:line 61
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Shared__ContactLayout.ExecuteAsync()
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderLayoutAsync(ViewContext context, ViewBufferTextWriter bodyWriter)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|24_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeFilterPipelineAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at NToastNotify.NtoastNotifyAjaxToastsMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)
   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.StatusCodePagesMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (6, N'DESKTOP-9U4GSOJ', CAST(0x0700FDE4A464EA420B AS DateTime2), N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke', N'System.InvalidOperationException: A view component named ''NTostNotify'' could not be found. A view component must be a public non-abstract class, not contain any generic parameters, and either be decorated with ''ViewComponentAttribute'' or have a class name ending with the ''ViewComponent'' suffix. A view component must not be decorated with ''NonViewComponentAttribute''.
   at Microsoft.AspNetCore.Mvc.ViewComponents.DefaultViewComponentHelper.InvokeAsync(String name, Object arguments)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewComponentHelperExtensions.InvokeAsync(IViewComponentHelper helper, String name)
   at AspNetCore.Views_Shared__ContactLayout.<ExecuteAsync>b__17_1() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Views\Shared\_ContactLayout.cshtml:line 61
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Shared__ContactLayout.ExecuteAsync()
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderLayoutAsync(ViewContext context, ViewBufferTextWriter bodyWriter)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|24_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeFilterPipelineAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at NToastNotify.NtoastNotifyAjaxToastsMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)
   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.StatusCodePagesMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (7, N'DESKTOP-9U4GSOJ', CAST(0x07C042FB1E65EA420B AS DateTime2), N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke', N'System.InvalidOperationException: A view component named ''NTostNotify'' could not be found. A view component must be a public non-abstract class, not contain any generic parameters, and either be decorated with ''ViewComponentAttribute'' or have a class name ending with the ''ViewComponent'' suffix. A view component must not be decorated with ''NonViewComponentAttribute''.
   at Microsoft.AspNetCore.Mvc.ViewComponents.DefaultViewComponentHelper.InvokeAsync(String name, Object arguments)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewComponentHelperExtensions.InvokeAsync(IViewComponentHelper helper, String name)
   at AspNetCore.Views_Shared__ContactLayout.<ExecuteAsync>b__17_1() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Views\Shared\_ContactLayout.cshtml:line 61
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Shared__ContactLayout.ExecuteAsync()
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderLayoutAsync(ViewContext context, ViewBufferTextWriter bodyWriter)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|24_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeFilterPipelineAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at NToastNotify.NtoastNotifyAjaxToastsMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)
   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.StatusCodePagesMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (8, N'DESKTOP-9U4GSOJ', CAST(0x07100E010B67EA420B AS DateTime2), N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke', N'System.InvalidOperationException: A view component named ''NTostNotify'' could not be found. A view component must be a public non-abstract class, not contain any generic parameters, and either be decorated with ''ViewComponentAttribute'' or have a class name ending with the ''ViewComponent'' suffix. A view component must not be decorated with ''NonViewComponentAttribute''.
   at Microsoft.AspNetCore.Mvc.ViewComponents.DefaultViewComponentHelper.InvokeAsync(String name, Object arguments)
   at Microsoft.AspNetCore.Mvc.Rendering.ViewComponentHelperExtensions.InvokeAsync(IViewComponentHelper helper, String name)
   at AspNetCore.Views_Shared__ContactLayout.<ExecuteAsync>b__17_1() in D:\udemy\MyBlog\ProgrammersBlog\ProgrammersBlog.Mvc\Views\Shared\_ContactLayout.cshtml:line 61
   at Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext.SetOutputContentAsync()
   at AspNetCore.Views_Shared__ContactLayout.ExecuteAsync()
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageCoreAsync(IRazorPage page, ViewContext context)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderPageAsync(IRazorPage page, ViewContext context, Boolean invokeViewStarts)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderLayoutAsync(ViewContext context, ViewBufferTextWriter bodyWriter)
   at Microsoft.AspNetCore.Mvc.Razor.RazorView.RenderAsync(ViewContext context)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ViewContext viewContext, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewExecutor.ExecuteAsync(ActionContext actionContext, IView view, ViewDataDictionary viewData, ITempDataDictionary tempData, String contentType, Nullable`1 statusCode)
   at Microsoft.AspNetCore.Mvc.ViewFeatures.ViewResultExecutor.ExecuteAsync(ActionContext context, ViewResult result)
   at Microsoft.AspNetCore.Mvc.ViewResult.ExecuteResultAsync(ActionContext context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResultFilterAsync>g__Awaited|29_0[TFilter,TFilterAsync](ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResultExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.ResultNext[TFilter,TFilterAsync](State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeResultFilters()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextResourceFilter>g__Awaited|24_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Rethrow(ResourceExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.InvokeFilterPipelineAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Routing.EndpointMiddleware.<Invoke>g__AwaitRequestTask|6_0(Endpoint endpoint, Task requestTask, ILogger logger)
   at NToastNotify.NtoastNotifyAjaxToastsMiddleware.InvokeAsync(HttpContext context, RequestDelegate next)
   at Microsoft.AspNetCore.Builder.UseMiddlewareExtensions.<>c__DisplayClass6_1.<<UseMiddlewareInterface>b__1>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Authentication.AuthenticationMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.StatusCodePagesMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (9, N'DESKTOP-9U4GSOJ', CAST(0x0750CC53DF73EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method624(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (10, N'DESKTOP-9U4GSOJ', CAST(0x07D0B728E573EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method624(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (11, N'DESKTOP-9U4GSOJ', CAST(0x071033CCEA73EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method624(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (12, N'DESKTOP-9U4GSOJ', CAST(0x07000A3DF473EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method624(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (13, N'DESKTOP-9U4GSOJ', CAST(0x07A0F3A10074EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (14, N'DESKTOP-9U4GSOJ', CAST(0x0750F33A2B74EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (15, N'DESKTOP-9U4GSOJ', CAST(0x07D03FC64B74EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (16, N'DESKTOP-9U4GSOJ', CAST(0x07D03E387B74EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (17, N'DESKTOP-9U4GSOJ', CAST(0x07708FEF6D75EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method470(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (18, N'DESKTOP-9U4GSOJ', CAST(0x07A0F5418075EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (19, N'DESKTOP-9U4GSOJ', CAST(0x07B0CB518A75EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (20, N'DESKTOP-9U4GSOJ', CAST(0x07A0C52FAE75EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (21, N'DESKTOP-9U4GSOJ', CAST(0x077049221C76EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (22, N'DESKTOP-9U4GSOJ', CAST(0x0790CDB9A876EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (23, N'DESKTOP-9U4GSOJ', CAST(0x07F03067E785EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method449(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (24, N'DESKTOP-9U4GSOJ', CAST(0x0750ECED8487EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (25, N'DESKTOP-9U4GSOJ', CAST(0x074053BD9E88EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method443(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (26, N'DESKTOP-9U4GSOJ', CAST(0x07004E3BAC88EB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method443(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (27, N'DESKTOP-9U4GSOJ', CAST(0x0740CD696C8AEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method425(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (28, N'DESKTOP-9U4GSOJ', CAST(0x07108831748AEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method425(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (29, N'DESKTOP-9U4GSOJ', CAST(0x0760FE1EDE8AEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method453(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (30, N'DESKTOP-9U4GSOJ', CAST(0x0720B171098BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (31, N'DESKTOP-9U4GSOJ', CAST(0x070024A1228BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (32, N'DESKTOP-9U4GSOJ', CAST(0x0720B7EB338BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (33, N'DESKTOP-9U4GSOJ', CAST(0x0780B7D03E8BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (34, N'DESKTOP-9U4GSOJ', CAST(0x07102DD4448BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (35, N'DESKTOP-9U4GSOJ', CAST(0x0780ACEF898BEB420B AS DateTime2), N'Error', N'An unhandled exception has occurred while executing the request.', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware', N'Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke', N'Microsoft.AspNetCore.Routing.Matching.AmbiguousMatchException: The request matched multiple endpoints. Matches: 

ProgrammersBlog.Mvc.Controllers.ArticleController.Detail1 (ProgrammersBlog.Mvc)
ProgrammersBlog.Mvc.Controllers.ArticleController.Detail1 (ProgrammersBlog.Mvc)
   at Microsoft.AspNetCore.Routing.Matching.DefaultEndpointSelector.ReportAmbiguity(CandidateState[] candidateState)
   at Microsoft.AspNetCore.Routing.Matching.DefaultEndpointSelector.ProcessFinalCandidates(HttpContext httpContext, CandidateState[] candidateState)
   at Microsoft.AspNetCore.Routing.Matching.DefaultEndpointSelector.Select(HttpContext httpContext, CandidateState[] candidateState)
   at Microsoft.AspNetCore.Routing.Matching.DfaMatcher.MatchAsync(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.Matching.DataSourceDependentMatcher.MatchAsync(HttpContext httpContext)
   at Microsoft.AspNetCore.Routing.EndpointRoutingMiddleware.Invoke(HttpContext httpContext)
   at Microsoft.AspNetCore.StaticFiles.StaticFileMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Session.SessionMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.StatusCodePagesMiddleware.Invoke(HttpContext context)
   at Microsoft.AspNetCore.Diagnostics.DeveloperExceptionPageMiddleware.Invoke(HttpContext context)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (36, N'DESKTOP-9U4GSOJ', CAST(0x07709071B68BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (37, N'DESKTOP-9U4GSOJ', CAST(0x07B0BC52E18BEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArticleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (38, N'DESKTOP-9U4GSOJ', CAST(0x0740CBE0DF8DEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArtcleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (39, N'DESKTOP-9U4GSOJ', CAST(0x07204789EF8DEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArtcleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method415(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (40, N'DESKTOP-9U4GSOJ', CAST(0x0780FDC1F58DEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArtcleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method433(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (41, N'DESKTOP-9U4GSOJ', CAST(0x07C0106E61AFEB420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArtcleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method421(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (42, N'DESKTOP-9U4GSOJ', CAST(0x07401BF5A261EC420B AS DateTime2), N'Error', N'Kendi Log hata mesajımız', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter', N'ProgrammersBlog.Mvc.Filters.MvcExceptionFilter.OnException', N'System.InvalidOperationException: Unable to resolve service for type ''ProgrammersBlog.Entity.Concrete.ArticleRightSideBarWidgetOptions'' while attempting to activate ''ProgrammersBlog.Mvc.Controllers.ArtcleController''.
   at Microsoft.Extensions.DependencyInjection.ActivatorUtilities.GetService(IServiceProvider sp, Type type, Type requiredBy, Boolean isDefaultParameterRequired)
   at lambda_method809(Closure , IServiceProvider , Object[] )
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerActivatorProvider.<>c__DisplayClass4_0.<CreateActivator>b__0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerFactoryProvider.<>c__DisplayClass5_0.<CreateControllerFactory>g__CreateController|0(ControllerContext controllerContext)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeNextExceptionFilterAsync>g__Awaited|25_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (43, N'DESKTOP-9U4GSOJ', CAST(0x072008898366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (44, N'DESKTOP-9U4GSOJ', CAST(0x07A0FDA98366EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (45, N'DESKTOP-9U4GSOJ', CAST(0x07A0FDA98366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (46, N'DESKTOP-9U4GSOJ', CAST(0x07B095AC8366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (47, N'DESKTOP-9U4GSOJ', CAST(0x07B095AC8366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (48, N'DESKTOP-9U4GSOJ', CAST(0x07F0A2AF8366EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (49, N'DESKTOP-9U4GSOJ', CAST(0x0770DBB08366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (50, N'DESKTOP-9U4GSOJ', CAST(0x0770DBB08366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (51, N'DESKTOP-9U4GSOJ', CAST(0x0770DBB08366EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (52, N'DESKTOP-9U4GSOJ', CAST(0x07C00FB48366EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (53, N'DESKTOP-9U4GSOJ', CAST(0x07C00FB48366EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (54, N'DESKTOP-9U4GSOJ', CAST(0x07900BB68366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (55, N'DESKTOP-9U4GSOJ', CAST(0x07900BB68366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (56, N'DESKTOP-9U4GSOJ', CAST(0x076007B88366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (57, N'DESKTOP-9U4GSOJ', CAST(0x076007B88366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (58, N'DESKTOP-9U4GSOJ', CAST(0x076007B88366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (59, N'DESKTOP-9U4GSOJ', CAST(0x0790EDBA8366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (60, N'DESKTOP-9U4GSOJ', CAST(0x0790EDBA8366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (61, N'DESKTOP-9U4GSOJ', CAST(0x0760E9BC8366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (62, N'DESKTOP-9U4GSOJ', CAST(0x0760E9BC8366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (63, N'DESKTOP-9U4GSOJ', CAST(0x0730D7EA8366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (64, N'DESKTOP-9U4GSOJ', CAST(0x07801EBCB166EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (65, N'DESKTOP-9U4GSOJ', CAST(0x07F02FBDB166EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (66, N'DESKTOP-9U4GSOJ', CAST(0x077068BEB166EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (67, N'DESKTOP-9U4GSOJ', CAST(0x077068BEB166EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (68, N'DESKTOP-9U4GSOJ', CAST(0x077068BEB166EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (69, N'DESKTOP-9U4GSOJ', CAST(0x07E0EAC1B166EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (70, N'DESKTOP-9U4GSOJ', CAST(0x07E0EAC1B166EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (71, N'DESKTOP-9U4GSOJ', CAST(0x07C00DC4B166EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (72, N'DESKTOP-9U4GSOJ', CAST(0x07C00DC4B166EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (73, N'DESKTOP-9U4GSOJ', CAST(0x07E0CCC6B166EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (74, N'DESKTOP-9U4GSOJ', CAST(0x07E0CCC6B166EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (75, N'DESKTOP-9U4GSOJ', CAST(0x07D016C9B166EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (76, N'DESKTOP-9U4GSOJ', CAST(0x07D016C9B166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (77, N'DESKTOP-9U4GSOJ', CAST(0x07A012CBB166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (78, N'DESKTOP-9U4GSOJ', CAST(0x07A012CBB166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (79, N'DESKTOP-9U4GSOJ', CAST(0x078035CDB166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (80, N'DESKTOP-9U4GSOJ', CAST(0x078035CDB166EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (81, N'DESKTOP-9U4GSOJ', CAST(0x07A065D2B166EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (82, N'DESKTOP-9U4GSOJ', CAST(0x07A065D2B166EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (83, N'DESKTOP-9U4GSOJ', CAST(0x077061D4B166EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (84, N'DESKTOP-9U4GSOJ', CAST(0x077061D4B166EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (85, N'DESKTOP-9U4GSOJ', CAST(0x0770B4F2C266EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (86, N'DESKTOP-9U4GSOJ', CAST(0x077025F5C266EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (87, N'DESKTOP-9U4GSOJ', CAST(0x077025F5C266EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (88, N'DESKTOP-9U4GSOJ', CAST(0x07606FF7C266EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (89, N'DESKTOP-9U4GSOJ', CAST(0x07606FF7C266EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (90, N'DESKTOP-9U4GSOJ', CAST(0x07606FF7C266EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (91, N'DESKTOP-9U4GSOJ', CAST(0x07B0A3FAC266EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (92, N'DESKTOP-9U4GSOJ', CAST(0x07108EFBC266EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (93, N'DESKTOP-9U4GSOJ', CAST(0x07108EFBC266EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (94, N'DESKTOP-9U4GSOJ', CAST(0x07108EFBC266EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (95, N'DESKTOP-9U4GSOJ', CAST(0x07B085FFC266EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (96, N'DESKTOP-9U4GSOJ', CAST(0x07004900C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (97, N'DESKTOP-9U4GSOJ', CAST(0x07004900C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (98, N'DESKTOP-9U4GSOJ', CAST(0x0700BA02C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (99, N'DESKTOP-9U4GSOJ', CAST(0x0700BA02C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (100, N'DESKTOP-9U4GSOJ', CAST(0x0700BA02C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (101, N'DESKTOP-9U4GSOJ', CAST(0x0740C705C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (102, N'DESKTOP-9U4GSOJ', CAST(0x0740C705C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (103, N'DESKTOP-9U4GSOJ', CAST(0x07301108C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (104, N'DESKTOP-9U4GSOJ', CAST(0x07301108C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (105, N'DESKTOP-9U4GSOJ', CAST(0x0710340AC366EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (106, N'DESKTOP-9U4GSOJ', CAST(0x0710340AC366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (107, N'DESKTOP-9U4GSOJ', CAST(0x0720F344C366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (108, N'DESKTOP-9U4GSOJ', CAST(0x07206447C366EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (109, N'DESKTOP-9U4GSOJ', CAST(0x07D01149C366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (110, N'DESKTOP-9U4GSOJ', CAST(0x0700F84BC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (111, N'DESKTOP-9U4GSOJ', CAST(0x0790574DC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (112, N'DESKTOP-9U4GSOJ', CAST(0x07502C4FC366EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (113, N'DESKTOP-9U4GSOJ', CAST(0x07502C4FC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (114, N'DESKTOP-9U4GSOJ', CAST(0x07A06052C366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (115, N'DESKTOP-9U4GSOJ', CAST(0x0740E753C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (116, N'DESKTOP-9U4GSOJ', CAST(0x0740E753C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (117, N'DESKTOP-9U4GSOJ', CAST(0x07405856C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (118, N'DESKTOP-9U4GSOJ', CAST(0x07405856C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (119, N'DESKTOP-9U4GSOJ', CAST(0x0730A258C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (120, N'DESKTOP-9U4GSOJ', CAST(0x0730A258C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (121, N'DESKTOP-9U4GSOJ', CAST(0x0730A258C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (122, N'DESKTOP-9U4GSOJ', CAST(0x0780D65BC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (123, N'DESKTOP-9U4GSOJ', CAST(0x0780D65BC366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (124, N'DESKTOP-9U4GSOJ', CAST(0x0760F95DC366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (125, N'DESKTOP-9U4GSOJ', CAST(0x0760F95DC366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (126, N'DESKTOP-9U4GSOJ', CAST(0x07606A60C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (127, N'DESKTOP-9U4GSOJ', CAST(0x07606A60C366EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (128, N'DESKTOP-9U4GSOJ', CAST(0x0750B462C366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (129, N'DESKTOP-9U4GSOJ', CAST(0x07B0F16AC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (130, N'DESKTOP-9U4GSOJ', CAST(0x0740516CC366EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (131, N'DESKTOP-9U4GSOJ', CAST(0x0740516CC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (132, N'DESKTOP-9U4GSOJ', CAST(0x0740C26EC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (133, N'DESKTOP-9U4GSOJ', CAST(0x0740C26EC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (134, N'DESKTOP-9U4GSOJ', CAST(0x0770A871C366EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (135, N'DESKTOP-9U4GSOJ', CAST(0x07B0B574C366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (136, N'DESKTOP-9U4GSOJ', CAST(0x0720C775C366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (137, N'DESKTOP-9U4GSOJ', CAST(0x0720C775C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (138, N'DESKTOP-9U4GSOJ', CAST(0x0770FB78C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (139, N'DESKTOP-9U4GSOJ', CAST(0x0740F77AC366EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (140, N'DESKTOP-9U4GSOJ', CAST(0x0780047EC366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (141, N'DESKTOP-9U4GSOJ', CAST(0x0730B27FC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (142, N'DESKTOP-9U4GSOJ', CAST(0x07404A82C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (143, N'DESKTOP-9U4GSOJ', CAST(0x07703085C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (144, N'DESKTOP-9U4GSOJ', CAST(0x07C06488C366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (145, N'DESKTOP-9U4GSOJ', CAST(0x07C06488C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (146, N'DESKTOP-9U4GSOJ', CAST(0x07D0FC8AC366EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (147, N'DESKTOP-9U4GSOJ', CAST(0x0770F48EC366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (148, N'DESKTOP-9U4GSOJ', CAST(0x07A0DA91C366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (149, N'DESKTOP-9U4GSOJ', CAST(0x07A0DA91C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (150, N'DESKTOP-9U4GSOJ', CAST(0x0750F995C366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (151, N'DESKTOP-9U4GSOJ', CAST(0x0750F995C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (152, N'DESKTOP-9U4GSOJ', CAST(0x07B05499C366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (153, N'DESKTOP-9U4GSOJ', CAST(0x07707CA2C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (154, N'DESKTOP-9U4GSOJ', CAST(0x07A0D3A7C366EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (155, N'DESKTOP-9U4GSOJ', CAST(0x07C092AAC366EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (156, N'DESKTOP-9U4GSOJ', CAST(0x07C092AAC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (157, N'DESKTOP-9U4GSOJ', CAST(0x077040ACC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (158, N'DESKTOP-9U4GSOJ', CAST(0x077040ACC366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (159, N'DESKTOP-9U4GSOJ', CAST(0x077040ACC366EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (160, N'DESKTOP-9U4GSOJ', CAST(0x077040ACC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (161, N'DESKTOP-9U4GSOJ', CAST(0x07F0E9AFC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (162, N'DESKTOP-9U4GSOJ', CAST(0x07F0E9AFC366EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (163, N'DESKTOP-9U4GSOJ', CAST(0x07D07DB4C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (164, N'DESKTOP-9U4GSOJ', CAST(0x07B0A0B6C366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (165, N'DESKTOP-9U4GSOJ', CAST(0x074071BAC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (166, N'DESKTOP-9U4GSOJ', CAST(0x074071BAC366EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (167, N'DESKTOP-9U4GSOJ', CAST(0x074071BAC366EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (168, N'DESKTOP-9U4GSOJ', CAST(0x074071BAC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (169, N'DESKTOP-9U4GSOJ', CAST(0x074071BAC366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (170, N'DESKTOP-9U4GSOJ', CAST(0x07A0CCBDC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (171, N'DESKTOP-9U4GSOJ', CAST(0x07A0CCBDC366EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (172, N'DESKTOP-9U4GSOJ', CAST(0x07A0CCBDC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (173, N'DESKTOP-9U4GSOJ', CAST(0x072005BFC366EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (174, N'DESKTOP-9U4GSOJ', CAST(0x072005BFC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (175, N'DESKTOP-9U4GSOJ', CAST(0x072005BFC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (176, N'DESKTOP-9U4GSOJ', CAST(0x072005BFC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (177, N'DESKTOP-9U4GSOJ', CAST(0x072005BFC366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (178, N'DESKTOP-9U4GSOJ', CAST(0x072076C1C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (179, N'DESKTOP-9U4GSOJ', CAST(0x072076C1C366EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (180, N'DESKTOP-9U4GSOJ', CAST(0x072076C1C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (181, N'DESKTOP-9U4GSOJ', CAST(0x072076C1C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (182, N'DESKTOP-9U4GSOJ', CAST(0x07300EC4C366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (183, N'DESKTOP-9U4GSOJ', CAST(0x07300EC4C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (184, N'DESKTOP-9U4GSOJ', CAST(0x07300EC4C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (185, N'DESKTOP-9U4GSOJ', CAST(0x07300EC4C366EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (186, N'DESKTOP-9U4GSOJ', CAST(0x07300EC4C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (187, N'DESKTOP-9U4GSOJ', CAST(0x071031C6C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (188, N'DESKTOP-9U4GSOJ', CAST(0x071031C6C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (189, N'DESKTOP-9U4GSOJ', CAST(0x071031C6C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (190, N'DESKTOP-9U4GSOJ', CAST(0x071031C6C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (191, N'DESKTOP-9U4GSOJ', CAST(0x0720C9C8C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (192, N'DESKTOP-9U4GSOJ', CAST(0x0720C9C8C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (193, N'DESKTOP-9U4GSOJ', CAST(0x0720C9C8C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (194, N'DESKTOP-9U4GSOJ', CAST(0x0720C9C8C366EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (195, N'DESKTOP-9U4GSOJ', CAST(0x0720C9C8C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (196, N'DESKTOP-9U4GSOJ', CAST(0x0750AFCBC366EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (197, N'DESKTOP-9U4GSOJ', CAST(0x0750AFCBC366EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (198, N'DESKTOP-9U4GSOJ', CAST(0x0750AFCBC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (199, N'DESKTOP-9U4GSOJ', CAST(0x071084CDC366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (200, N'DESKTOP-9U4GSOJ', CAST(0x071084CDC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (201, N'DESKTOP-9U4GSOJ', CAST(0x071084CDC366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (202, N'DESKTOP-9U4GSOJ', CAST(0x07201CD0C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (203, N'DESKTOP-9U4GSOJ', CAST(0x07003FD2C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (204, N'DESKTOP-9U4GSOJ', CAST(0x07003FD2C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (205, N'DESKTOP-9U4GSOJ', CAST(0x07003FD2C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (206, N'DESKTOP-9U4GSOJ', CAST(0x0710D7D4C366EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (207, N'DESKTOP-9U4GSOJ', CAST(0x0710D7D4C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (208, N'DESKTOP-9U4GSOJ', CAST(0x0710D7D4C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (209, N'DESKTOP-9U4GSOJ', CAST(0x0710D7D4C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (210, N'DESKTOP-9U4GSOJ', CAST(0x07600BD8C366EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (211, N'DESKTOP-9U4GSOJ', CAST(0x07600BD8C366EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (212, N'DESKTOP-9U4GSOJ', CAST(0x0720E0D9C366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (213, N'DESKTOP-9U4GSOJ', CAST(0x0720E0D9C366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (214, N'DESKTOP-9U4GSOJ', CAST(0x074010DFC366EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (215, N'DESKTOP-9U4GSOJ', CAST(0x07B092E2C366EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (216, N'DESKTOP-9U4GSOJ', CAST(0x077067E4C366EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (217, N'DESKTOP-9U4GSOJ', CAST(0x07306B5CF166EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (218, N'DESKTOP-9U4GSOJ', CAST(0x07502A5FF166EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (219, N'DESKTOP-9U4GSOJ', CAST(0x07502A5FF166EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (220, N'DESKTOP-9U4GSOJ', CAST(0x07502A5FF166EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (221, N'DESKTOP-9U4GSOJ', CAST(0x07801062F166EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (222, N'DESKTOP-9U4GSOJ', CAST(0x07801062F166EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (223, N'DESKTOP-9U4GSOJ', CAST(0x07E06B65F166EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (224, N'DESKTOP-9U4GSOJ', CAST(0x07E06B65F166EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (225, N'DESKTOP-9U4GSOJ', CAST(0x07901967F166EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (226, N'DESKTOP-9U4GSOJ', CAST(0x07901967F166EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (227, N'DESKTOP-9U4GSOJ', CAST(0x07D0266AF166EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (228, N'DESKTOP-9U4GSOJ', CAST(0x0730116BF166EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (229, N'DESKTOP-9U4GSOJ', CAST(0x0730116BF166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (230, N'DESKTOP-9U4GSOJ', CAST(0x0730116BF166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (231, N'DESKTOP-9U4GSOJ', CAST(0x0730826DF166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (232, N'DESKTOP-9U4GSOJ', CAST(0x0730826DF166EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (233, N'DESKTOP-9U4GSOJ', CAST(0x0730826DF166EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (234, N'DESKTOP-9U4GSOJ', CAST(0x07401A70F166EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (235, N'DESKTOP-9U4GSOJ', CAST(0x07401A70F166EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (236, N'DESKTOP-9U4GSOJ', CAST(0x07401A70F166EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (237, N'DESKTOP-9U4GSOJ', CAST(0x07306472F166EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (238, N'DESKTOP-9U4GSOJ', CAST(0x07306472F166EC420B AS DateTime2), N'Warn', N'User is not in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (239, N'DESKTOP-9U4GSOJ', CAST(0x07109818AA67EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (240, N'DESKTOP-9U4GSOJ', CAST(0x07107333AA67EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (241, N'DESKTOP-9U4GSOJ', CAST(0x07B0F934AA67EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (242, N'DESKTOP-9U4GSOJ', CAST(0x07B0F934AA67EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (243, N'DESKTOP-9U4GSOJ', CAST(0x0780F536AA67EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (244, N'DESKTOP-9U4GSOJ', CAST(0x0780F536AA67EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (245, N'DESKTOP-9U4GSOJ', CAST(0x07806639AA67EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (246, N'DESKTOP-9U4GSOJ', CAST(0x07806639AA67EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (247, N'DESKTOP-9U4GSOJ', CAST(0x0750623BAA67EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (248, N'DESKTOP-9U4GSOJ', CAST(0x0750623BAA67EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (249, N'DESKTOP-9U4GSOJ', CAST(0x0730853DAA67EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (250, N'DESKTOP-9U4GSOJ', CAST(0x0730853DAA67EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (251, N'DESKTOP-9U4GSOJ', CAST(0x0730853DAA67EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (252, N'DESKTOP-9U4GSOJ', CAST(0x07504440AA67EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (253, N'DESKTOP-9U4GSOJ', CAST(0x07504440AA67EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (254, N'DESKTOP-9U4GSOJ', CAST(0x07101942AA67EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (255, N'DESKTOP-9U4GSOJ', CAST(0x07101942AA67EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (256, N'DESKTOP-9U4GSOJ', CAST(0x07101942AA67EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (257, N'DESKTOP-9U4GSOJ', CAST(0x0730D844AA67EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (258, N'DESKTOP-9U4GSOJ', CAST(0x0730D844AA67EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (259, N'DESKTOP-9U4GSOJ', CAST(0x0700D446AA67EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (260, N'DESKTOP-9U4GSOJ', CAST(0x075048A51D68EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (261, N'DESKTOP-9U4GSOJ', CAST(0x074092A71D68EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (262, N'DESKTOP-9U4GSOJ', CAST(0x07C0CAA81D68EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (263, N'DESKTOP-9U4GSOJ', CAST(0x07C0CAA81D68EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (264, N'DESKTOP-9U4GSOJ', CAST(0x07B014AB1D68EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (265, N'DESKTOP-9U4GSOJ', CAST(0x07B014AB1D68EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (266, N'DESKTOP-9U4GSOJ', CAST(0x07B014AB1D68EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (267, N'DESKTOP-9U4GSOJ', CAST(0x0740E5AE1D68EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (268, N'DESKTOP-9U4GSOJ', CAST(0x0790A8AF1D68EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (269, N'DESKTOP-9U4GSOJ', CAST(0x0790A8AF1D68EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (270, N'DESKTOP-9U4GSOJ', CAST(0x0790A8AF1D68EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (271, N'DESKTOP-9U4GSOJ', CAST(0x07A040B21D68EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (272, N'DESKTOP-9U4GSOJ', CAST(0x07A040B21D68EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (273, N'DESKTOP-9U4GSOJ', CAST(0x07A040B21D68EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (274, N'DESKTOP-9U4GSOJ', CAST(0x07908AB41D68EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (275, N'DESKTOP-9U4GSOJ', CAST(0x07908AB41D68EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (276, N'DESKTOP-9U4GSOJ', CAST(0x07908AB41D68EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (277, N'DESKTOP-9U4GSOJ', CAST(0x0790FBB61D68EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (278, N'DESKTOP-9U4GSOJ', CAST(0x0790FBB61D68EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (279, N'DESKTOP-9U4GSOJ', CAST(0x0790FBB61D68EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (280, N'DESKTOP-9U4GSOJ', CAST(0x078045B91D68EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (281, N'DESKTOP-9U4GSOJ', CAST(0x078045B91D68EC420B AS DateTime2), N'Warn', N'User is already in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (282, N'DESKTOP-9U4GSOJ', CAST(0x07105F072168EC420B AS DateTime2), N'Warn', N'User is not in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (283, N'DESKTOP-9U4GSOJ', CAST(0x07F081092168EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (284, N'DESKTOP-9U4GSOJ', CAST(0x07E0CB0B2168EC420B AS DateTime2), N'Warn', N'User is not in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (285, N'DESKTOP-9U4GSOJ', CAST(0x07D0150E2168EC420B AS DateTime2), N'Warn', N'User is not in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (286, N'DESKTOP-9U4GSOJ', CAST(0x0790EA0F2168EC420B AS DateTime2), N'Warn', N'User is not in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (287, N'DESKTOP-9U4GSOJ', CAST(0x07905B122168EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (288, N'DESKTOP-9U4GSOJ', CAST(0x0780A5142168EC420B AS DateTime2), N'Warn', N'User is not in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (289, N'DESKTOP-9U4GSOJ', CAST(0x073053162168EC420B AS DateTime2), N'Warn', N'User is not in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (290, N'DESKTOP-9U4GSOJ', CAST(0x07004F182168EC420B AS DateTime2), N'Warn', N'User is not in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (291, N'DESKTOP-9U4GSOJ', CAST(0x07004F182168EC420B AS DateTime2), N'Warn', N'User is not in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (292, N'DESKTOP-9U4GSOJ', CAST(0x0710E71A2168EC420B AS DateTime2), N'Warn', N'User is not in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (293, N'DESKTOP-9U4GSOJ', CAST(0x0710E71A2168EC420B AS DateTime2), N'Warn', N'User is not in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (294, N'DESKTOP-9U4GSOJ', CAST(0x0710581D2168EC420B AS DateTime2), N'Warn', N'User is not in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (295, N'DESKTOP-9U4GSOJ', CAST(0x0710581D2168EC420B AS DateTime2), N'Warn', N'User is not in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (296, N'DESKTOP-9U4GSOJ', CAST(0x0720F01F2168EC420B AS DateTime2), N'Warn', N'User is not in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (297, N'DESKTOP-9U4GSOJ', CAST(0x0720F01F2168EC420B AS DateTime2), N'Warn', N'User is not in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (298, N'DESKTOP-9U4GSOJ', CAST(0x073088222168EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (299, N'DESKTOP-9U4GSOJ', CAST(0x073088222168EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (300, N'DESKTOP-9U4GSOJ', CAST(0x0730F9242168EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (301, N'DESKTOP-9U4GSOJ', CAST(0x0730F9242168EC420B AS DateTime2), N'Warn', N'User is not in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserNotInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (302, N'DESKTOP-9U4GSOJ', CAST(0x07306A272168EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
GO
print 'Processed 300 total records'
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (303, N'DESKTOP-9U4GSOJ', CAST(0x07A0145D5D68EC420B AS DateTime2), N'Warn', N'User is already in role Category.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (304, N'DESKTOP-9U4GSOJ', CAST(0x0780375F5D68EC420B AS DateTime2), N'Warn', N'User is already in role Category.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (305, N'DESKTOP-9U4GSOJ', CAST(0x0780375F5D68EC420B AS DateTime2), N'Warn', N'User is already in role Category.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (306, N'DESKTOP-9U4GSOJ', CAST(0x075033615D68EC420B AS DateTime2), N'Warn', N'User is already in role Category.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (307, N'DESKTOP-9U4GSOJ', CAST(0x07603C665D68EC420B AS DateTime2), N'Warn', N'User is already in role Article.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (308, N'DESKTOP-9U4GSOJ', CAST(0x07603C665D68EC420B AS DateTime2), N'Warn', N'User is already in role Article.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (309, N'DESKTOP-9U4GSOJ', CAST(0x075086685D68EC420B AS DateTime2), N'Warn', N'User is already in role Article.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (310, N'DESKTOP-9U4GSOJ', CAST(0x075086685D68EC420B AS DateTime2), N'Warn', N'User is already in role Article.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (311, N'DESKTOP-9U4GSOJ', CAST(0x075086685D68EC420B AS DateTime2), N'Warn', N'User is already in role User.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (312, N'DESKTOP-9U4GSOJ', CAST(0x0790936B5D68EC420B AS DateTime2), N'Warn', N'User is already in role User.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (313, N'DESKTOP-9U4GSOJ', CAST(0x0790936B5D68EC420B AS DateTime2), N'Warn', N'User is already in role User.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (314, N'DESKTOP-9U4GSOJ', CAST(0x07608F6D5D68EC420B AS DateTime2), N'Warn', N'User is already in role User.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (315, N'DESKTOP-9U4GSOJ', CAST(0x07608F6D5D68EC420B AS DateTime2), N'Warn', N'User is already in role Role.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (316, N'DESKTOP-9U4GSOJ', CAST(0x07608F6D5D68EC420B AS DateTime2), N'Warn', N'User is already in role Role.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (317, N'DESKTOP-9U4GSOJ', CAST(0x077027705D68EC420B AS DateTime2), N'Warn', N'User is already in role Role.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (318, N'DESKTOP-9U4GSOJ', CAST(0x077027705D68EC420B AS DateTime2), N'Warn', N'User is already in role Role.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (319, N'DESKTOP-9U4GSOJ', CAST(0x0730FC715D68EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Create.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (320, N'DESKTOP-9U4GSOJ', CAST(0x0730FC715D68EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (321, N'DESKTOP-9U4GSOJ', CAST(0x0730FC715D68EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Update.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (322, N'DESKTOP-9U4GSOJ', CAST(0x074094745D68EC420B AS DateTime2), N'Warn', N'User is already in role Comment.Delete.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (323, N'DESKTOP-9U4GSOJ', CAST(0x074094745D68EC420B AS DateTime2), N'Warn', N'User is already in role AdminArea.Home.Read.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
INSERT [dbo].[Logs] ([Id], [MachineName], [Logged], [Level], [Message], [Logger], [Callsite], [Exception]) VALUES (324, N'DESKTOP-9U4GSOJ', CAST(0x074094745D68EC420B AS DateTime2), N'Warn', N'User is already in role SuperAdmin.', N'Microsoft.AspNetCore.Identity.UserManager', N'Microsoft.AspNetCore.Identity.UserManager`1.UserAlreadyInRoleError', N'')
SET IDENTITY_INSERT [dbo].[Logs] OFF
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210818194101_InitialCreate', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210824205022_NLogAdded', N'5.0.8')
/****** Object:  Table [dbo].[Categories]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](70) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByName] [nvarchar](50) NOT NULL,
	[ModifiedByName] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (1, N'C# ', N'C# Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x0788C3AC21BEE3420B AS DateTime2), CAST(0x07E6BB75B98EE5420B AS DateTime2), 0, 1, N'InitialCreate', N'adminuser', N'C# Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (2, N'C++', N'C++ Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07A1C3AC21BEE3420B AS DateTime2), CAST(0x077A1BA6B4B7E4420B AS DateTime2), 0, 1, N'InitialCreate', N'adminuser', N'C++ Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (4, N'Typescript', N'Typescript Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07ABC3AC21BEE3420B AS DateTime2), CAST(0x07ADC3AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Typescript Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (5, N'Java', N'Java Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07B0C3AC21BEE3420B AS DateTime2), CAST(0x07B2C3AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Java Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (6, N'Python', N'Python Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07B6C3AC21BEE3420B AS DateTime2), CAST(0x07B7C3AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Python Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (7, N'Php', N'Php Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07BBC3AC21BEE3420B AS DateTime2), CAST(0x07BCC3AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Php Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (8, N'Kotlin', N'Kotlin Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07C0C3AC21BEE3420B AS DateTime2), CAST(0x07C1C3AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Kotlin Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (9, N'Swift', N'Swift Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x07C5C3AC21BEE3420B AS DateTime2), CAST(0x07C6C3AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Swift Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (10, N'Ruby', N'Ruby Programlama Dili ile İlgili En Güncel Bilgiler', CAST(0x0786C4AC21BEE3420B AS DateTime2), CAST(0x0787C4AC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Ruby Blog Kategorisi')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (11, N'yeni kategori', N'yeni kategori', CAST(0x0707E8429D86E5420B AS DateTime2), CAST(0x07D105DBFAB0EB420B AS DateTime2), 0, 1, N'adminuser', N'adminuser', N'yeni kategori')
INSERT [dbo].[Categories] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (12, N'deneme1', N'descsript1', CAST(0x0733F59DB386E5420B AS DateTime2), CAST(0x074CF59DB386E5420B AS DateTime2), 0, 1, N'adminuser', N'adminuser', N'deneme')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Roles]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[NormalizedName] [nvarchar](100) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[Roles] 
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Category.Create', N'CATEGORY.CREATE', N'e45e3d73-ddb6-462d-a4a3-08d1a705c90e')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Category.Read', N'CATEGORY.READ', N'759644f7-f449-4c2a-9b19-a4eb2a86806a')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (3, N'Category.Update', N'CATEGORY.UPDATE', N'3d2635ee-98d0-4878-8969-037bbeee7376')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (4, N'Category.Delete', N'CATEGORY.DELETE', N'2ec03565-53f1-4885-8fbb-dca9c011b817')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (5, N'Article.Create', N'ARTICLE.CREATE', N'2f510ce3-3208-4696-bb29-01f534d36443')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (6, N'Article.Read', N'ARTICLE.READ', N'3c8d5a39-d88e-40e3-9f8e-af682dbc5180')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (7, N'Article.Update', N'ARTICLE.UPDATE', N'd85bdbf9-b3f7-4011-8a85-ee346fef4ad8')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (8, N'Article.Delete', N'ARTICLE.DELETE', N'69841009-2f45-424f-9c67-e4079e8ae3ff')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (9, N'User.Create', N'USER.CREATE', N'81333127-75eb-42ec-9ec4-6780f4958017')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (10, N'User.Read', N'USER.READ', N'5e40cf1c-1e8f-4405-a42d-f086c7cff9c2')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (11, N'User.Update', N'USER.UPDATE', N'd3aac076-b65f-43ed-b20c-997718b642b0')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (12, N'User.Delete', N'USER.DELETE', N'1cbb440a-e281-4c34-8fde-0f2f8ebcf078')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (13, N'Role.Create', N'ROLE.CREATE', N'4a2b2b8b-8884-4c72-888d-3b93b4895924')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (14, N'Role.Read', N'ROLE.READ', N'6455acf6-8982-443d-9fa0-f9eee10231c9')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (15, N'Role.Update', N'ROLE.UPDATE', N'69f4985e-f401-403d-8ebb-e270f062ec96')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (16, N'Role.Delete', N'ROLE.DELETE', N'02b65a94-540b-4903-a274-ceabf4935987')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (17, N'Comment.Create', N'COMMENT.CREATE', N'3897d74d-d308-4c15-a1da-e790995440a2')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (18, N'Comment.Read', N'COMMENT.READ', N'e2aa51f4-15b9-4736-bd36-932d0756b443')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (19, N'Comment.Update', N'COMMENT.UPDATE', N'5331dec8-7ade-4737-bc54-8cfc479261dc')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (20, N'Comment.Delete', N'COMMENT.DELETE', N'50b62e4b-9caa-4484-a09b-361107765561')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (21, N'AdminArea.Home.Read', N'ADMINAREA.HOME.READ', N'48eec882-dec7-42b7-9a89-295d39d7aee9')
INSERT [dbo].[Roles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (22, N'SuperAdmin', N'SUPERADMIN', N'7ad44b46-a2a4-451d-b30b-1a29800707cd')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Picture] [nvarchar](250) NOT NULL,
	[About] [nvarchar](1000) NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[YoutubeLink] [nvarchar](250) NULL,
	[TwitterLink] [nvarchar](250) NULL,
	[InstagramLink] [nvarchar](250) NULL,
	[FacebookLink] [nvarchar](250) NULL,
	[LinkedInLink] [nvarchar](250) NULL,
	[GitHubLink] [nvarchar](250) NULL,
	[WebsiteLink] [nvarchar](250) NULL,
	[UserName] [nvarchar](50) NULL,
	[NormalizedUserName] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[NormalizedEmail] [nvarchar](100) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[Users] 
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[Users] 
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([Id], [Picture], [About], [FirstName], [LastName], [YoutubeLink], [TwitterLink], [InstagramLink], [FacebookLink], [LinkedInLink], [GitHubLink], [WebsiteLink], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'/userImages/adminuser_795_6_36_12_27_8_2021.png', N'Admin User of ProgrammersBlog', N'Admin', N'User', N'https://youtube.com/adminuser', N'https://twitter.com/adminuser', N'https://instagram.com/adminuser', N'https://facebook.com/adminuser', N'https://linkedin.com/adminuser', N'https://github.com/adminuser', N'https://programmersblog.com/', N'adminuser', N'ADMINUSER', N'adminuser@gmail.com', N'ADMINUSER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPTcVvor4f3cZ9+QHM8bfs8d4YxFvTlmWGnx4UV2cRl45Ge8c2Z0E9vXy7v7oliETg==', N'34R5ULGU5MMSVT6EOFEOQINJVRRU27VT', N'541a5ff7-f7d4-4d83-90d0-fd1f2e084893', N'+905555555555', 1, 0, NULL, 0, 0)
INSERT [dbo].[Users] ([Id], [Picture], [About], [FirstName], [LastName], [YoutubeLink], [TwitterLink], [InstagramLink], [FacebookLink], [LinkedInLink], [GitHubLink], [WebsiteLink], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (4, N'userImages/defaultUser.png', N'Editor User of ProgrammersBlog', N'admin', N'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'editoruser', N'EDITORUSER', N'editoruser@gmail.com', N'EDITORUSER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEJSs5Z7Rv5oi/jRbj+psy2gTNuNCk/Efzsh8KJVaohlbofrxHyMA08eqNOhI3PV9Q==', N'VL5HCUXCAELFZEHOXN26A3CKAPXRIXT6', N'155f0b66-5eb0-4823-9bd1-ece830d0d203', N'5555555555555', 0, 0, NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Picture], [About], [FirstName], [LastName], [YoutubeLink], [TwitterLink], [InstagramLink], [FacebookLink], [LinkedInLink], [GitHubLink], [WebsiteLink], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (5, N'userImages/mevlutince_34_21_43_18_27_8_2021.png', N'AutoMapper ile image yükleme testi', N'mevlüt', N'ince', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mevlutince', N'MEVLUTINCE', N'mevlutince33@gmail.com', N'MEVLUTINCE33@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDWFX1kf7TD621gC8WwjaSFdhUtgXtroP2TnXoChCXFmkNim9LxVYfIRuNWOLxAkpw==', N'W4ICD3WPFW4CGFZXUFWAFNWFGID3QEWG', N'e83c555c-7447-4bd4-b7b7-b7aed0eb4fe2', N'+905552221100', 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[UserRoles]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserRoles_RoleId] ON [dbo].[UserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (4, 2)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 3)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 4)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 5)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 6)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (4, 6)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 7)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 8)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 9)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 10)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 11)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 12)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 13)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 14)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 15)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 16)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 17)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (4, 17)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 18)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (4, 18)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 19)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 20)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 21)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (4, 21)
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 22)
/****** Object:  Table [dbo].[UserLogins]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserLogins_UserId] ON [dbo].[UserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserClaims]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserClaims_UserId] ON [dbo].[UserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleClaims]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_RoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleClaims_RoleId] ON [dbo].[RoleClaims] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Thumbnail] [nvarchar](250) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[ViewCount] [int] NOT NULL,
	[CommentCount] [int] NOT NULL,
	[SeoAuthor] [nvarchar](50) NOT NULL,
	[SeoDescription] [nvarchar](150) NOT NULL,
	[SeoTags] [nvarchar](70) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByName] [nvarchar](50) NOT NULL,
	[ModifiedByName] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Articles_CategoryId] ON [dbo].[Articles] 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Articles_UserId] ON [dbo].[Articles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articles] ON
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (1, N'C# 9.0 ve .NET 5 Yenilikleri', N'<p>Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500''lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960''larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.&nbsp; &nbsp;&nbsp;</p>', N'postImages/defaultThumbnail.jpg', CAST(0x070000000000EC420B AS DateTime2), 28651, 5630, N'mevlüt ince', N'C# 9.0 ve .NET 5 Yenilikleri', N'C#, C# 9, .NET5, .NET Framework, .NET Core', 1, 1, CAST(0x07C3CBAB21BEE3420B AS DateTime2), CAST(0x07AA0D752467EC420B AS DateTime2), 1, 0, N'InitialCreate', N'adminuser', N'C# 9.0 ve .NET 5 Yenilikleri')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (2, N'C++ 11 ve 19 Yenilikleri', N'Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli ''buraya metin gelecek, buraya metin gelecek'' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır. Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında ''lorem ipsum'' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0759D6AB21BEE3420B AS DateTime2), 30126, 15000, N'mevlüt ince', N'C++ 11 ve 19 Yenilikleri', N'C++ 11 ve 19 Yenilikleri', 2, 1, CAST(0x075BD6AB21BEE3420B AS DateTime2), CAST(0x075CD6AB21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'C++ 11 ve 19 Yenilikleri')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (5, N'Java ve Android''in Geleceği | 2021', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia''daki Hampden-Sydney College''dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan ''consectetur'' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan "de Finibus Bonorum et Malorum" (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan "Lorem ipsum dolor sit amet" 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500''lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir. Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H. Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0770D6AB21BEE3420B AS DateTime2), 32254, 23602, N'Mehmet Cumali', N'Java, Android, Mobile, Kotlin, Uygulama Geliştirme', N'Java, Mobil, Kotlin, Android, IOS, SWIFT', 5, 1, CAST(0x0771D6AB21BEE3420B AS DateTime2), CAST(0x0768CCAF04B1EB420B AS DateTime2), 1, 0, N'InitialCreate', N'adminuser', N'JAVA')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (6, N'Python ile Veri Madenciliği | 2021', N'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', N'postImages/defaultThumbnail.jpg', CAST(0x0776D6AB21BEE3420B AS DateTime2), 99992, 90590, N'Ayşe Kaplan', N'Python ile Veri Madenciliği', N'Python, Veri Madenciliği Nasıl Yapılır?', 6, 1, CAST(0x0777D6AB21BEE3420B AS DateTime2), CAST(0x0778D6AB21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Python')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (7, N'Php Laravel Başlangıç Rehberi | API', N'Contrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du 0De Finibus Bonorum et Malorum'' (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, ''Lorem ipsum dolor sit amet...'''', proviennent de la section 1.10.32', N'postImages/defaultThumbnail.jpg', CAST(0x077DD6AB21BEE3420B AS DateTime2), 48183, 30256, N'Ali Demir', N'Php ile API Oluşturma Rehberi', N'php, laravel, api, oop', 7, 1, CAST(0x077FD6AB21BEE3420B AS DateTime2), CAST(0x0780D6AB21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'PHP')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (8, N'Kotlin ile Mobil Programlama', N'Plusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d''entre elles a été altérée par l''addition d''humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu''il n''y a rien d''embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d''humour.', N'postImages/defaultThumbnail.jpg', CAST(0x0785D6AB21BEE3420B AS DateTime2), 75087, 45689, N'Hasan Kara', N'Kotlin ile Mobil Programlama Baştan Sona Adım Adım', N'kotlin, android, mobil, programlama', 8, 1, CAST(0x0787D6AB21BEE3420B AS DateTime2), CAST(0x0788D6AB21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Kotlin')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (9, N'Swift ile IOS Programlama', N'Al contrario di quanto si pensi, Lorem Ipsum non è semplicemente una sequenza casuale di caratteri. Risale ad un classico della letteratura latina del 45 AC, cosa che lo rende vecchio di 2000 anni. Richard McClintock, professore di latino al Hampden-Sydney College in Virginia, ha ricercato una delle più oscure parole latine, consectetur, da un passaggio del Lorem Ipsum e ha scoperto tra i vari testi in cui è citata, la fonte da cui è tratto il testo, le sezioni 1.10.32 and 1.10.33 del ''de Finibus Bonorum et Malorum'' di Cicerone. Questo testo è un trattato su teorie di etica, molto popolare nel Rinascimento. La prima riga del Lorem Ipsum, ''Lorem ipsum dolor sit amet..'''', è tratta da un passaggio della sezione 1.10.32.', N'postImages/defaultThumbnail.jpg', CAST(0x078DD6AB21BEE3420B AS DateTime2), 14900, 10235, N'Funda Çelik', N'Swift ile IOS Mobil Programlama Baştan Sona Adım Adım', N'IOS, android, mobil, programlama', 9, 1, CAST(0x078FD6AB21BEE3420B AS DateTime2), CAST(0x0790D6AB21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Swift')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (10, N'Ruby on Rails ile AirBnb Klon Kodlayalım', N'Esistono innumerevoli variazioni dei passaggi del Lorem Ipsum, ma la maggior parte hanno subito delle variazioni del tempo, a causa dell’inserimento di passaggi ironici, o di sequenze casuali di caratteri palesemente poco verosimili. Se si decide di utilizzare un passaggio del Lorem Ipsum, è bene essere certi che non contenga nulla di imbarazzante. In genere, i generatori di testo segnaposto disponibili su internet tendono a ripetere paragrafi predefiniti, rendendo questo il primo vero generatore automatico su intenet. Infatti utilizza un dizionario di oltre 200 vocaboli latini, combinati con un insieme di modelli di strutture di periodi, per generare passaggi di testo verosimili. Il testo così generato è sempre privo di ripetizioni, parole imbarazzanti o fuori luogo ecc.', N'postImages/defaultThumbnail.jpg', CAST(0x0793D6AB21BEE3420B AS DateTime2), 26783, 19620, N'Alper Tunga', N'Ruby, Ruby on Rails Web Programlama, AirBnb Klon', N'Ruby on Rails, Ruby, Web Programlama, AirBnb', 10, 1, CAST(0x0795D6AB21BEE3420B AS DateTime2), CAST(0x0796D6AB21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Ruby')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (11, N'özel karakterler: , .:*" silinecek mi bunun kontrolunu yapacagız. ', N'<p>özel karakterler: , .:*" silinecek mi bunun kontrolunu yapacagız.&nbsp;özel karakterler: , .:*" silinecek mi bunun kontrolunu yapacagız.&nbsp;özel karakterler: , .:*" silinecek mi bunun kontrolunu yapacagız.&nbsp;<br></p>', N'postImages/özel karakterler   silinecek mi bunun kontrolunu yapacagız _343_2_5_13_19_8_2021.png', CAST(0x070000000000E4420B AS DateTime2), 26974, 20652, N'mevlüt ince', N'deneme', N'deneme', 5, 1, CAST(0x07996835AB6DE4420B AS DateTime2), CAST(0x07E34F35AB6DE4420B AS DateTime2), 0, 1, N'adminuser', N'adminuser', NULL)
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (12, N'.NET5 ile Gelen Yenilikler', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x07D0AF1EF3C2E5420B AS DateTime2), 10456, 9652, N'C# Developer', N'C# 9.0 .NET5', N'C# F# .NET CORE .NET ASP.NET MVC5', 1, 1, CAST(0x07D0AF1EF3C2E5420B AS DateTime2), CAST(0x07D0AF1EF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk C# Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (13, N'C++ ile Algoritma Yapıları', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x07104C1FF3C2E5420B AS DateTime2), 11930, 9145, N'C++ Developer', N'C++ 99, 11 20, Linked List Veri Yapıları', N'C++ 99, 11 20, Linked List Veri Yapıları', 1, 1, CAST(0x07104C1FF3C2E5420B AS DateTime2), CAST(0x07104C1FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk C++ Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (14, N'Asenkron JavaScript', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x07104C1FF3C2E5420B AS DateTime2), 25023, 20365, N'JavaScript Developer', N'Javascript ES6-ES7-ES8', N'Javascript ES6-ES7-ES8', 1, 1, CAST(0x07104C1FF3C2E5420B AS DateTime2), CAST(0x07104C1FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk JavaScript Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (15, N'Python ile Veri Analizi', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x07104C1FF3C2E5420B AS DateTime2), 9902, 7500, N'Python Developer', N'Python ile Algoritmalar ve Veri Analizi', N'Python ile Algoritmalar ve Veri Analizi', 1, 1, CAST(0x07104C1FF3C2E5420B AS DateTime2), CAST(0x07104C1FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk Python Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (16, N'Java ile Android ve Mobil Programlama', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x07104C1FF3C2E5420B AS DateTime2), 23500, 20145, N'Java Developer', N'Java, Kotlin, Android', N'Java, Kotlin, Android', 1, 1, CAST(0x07104C1FF3C2E5420B AS DateTime2), CAST(0x07104C1FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk Java Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (17, N'Dart ve Flutter ile IOS & Android Programlama', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 68764, 55555, N'Dart Developer', N'Dart, Flutter, Android, IOS, Mobil', N'Dart, Flutter, Android, IOS, Mobil', 1, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk Java Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (18, N'.NET5 ile Gelen Yenilikler 2', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 8746, 6621, N'C# Developer', N'C# 9.0 .NET5', N'C# F# .NET CORE .NET ASP.NET MVC5', 1, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk C# Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (19, N'C++ ile Algoritma Yapıları 2', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 6325, 0, N'C++ Developer', N'C++ 99, 11 20, Linked List Veri Yapıları', N'C++ 99, 11 20, Linked List Veri Yapıları', 2, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk C++ Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (20, N'Asenkron JavaScript 2', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 5219, 4500, N'JavaScript Developer', N'Javascript ES6-ES7-ES8', N'Javascript ES6-ES7-ES8', 1, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk JavaScript Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (21, N'Python ile Veri Analizi 2', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 99, 36, N'Python Developer', N'Python ile Algoritmalar ve Veri Analizi', N'Python ile Algoritmalar ve Veri Analizi', 1, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk Python Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (22, N'Java ile Android ve Mobil Programlama 2', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 236, 150, N'Java Developer', N'Java, Kotlin, Android', N'Java, Kotlin, Android', 1, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk Java Paylaşımı')
INSERT [dbo].[Articles] ([Id], [Title], [Content], [Thumbnail], [Date], [ViewCount], [CommentCount], [SeoAuthor], [SeoDescription], [SeoTags], [CategoryId], [UserId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (23, N'Dart ve Flutter ile IOS & Android Programlama 2', N'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır. Virginia daki Hampden-Sydney College dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan consectetur sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan de Finibus Bonorum et Malorum (iyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir. Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur. Lorem Ipsum pasajının ilk satırı olan Lorem ipsum dolor sit amet 1.10.32 sayılı bölümdeki bir satırdan gelmektedir. 1500 lerden beri kullanılmakta olan standard Lorem Ipsum metinleri ilgilenenler için yeniden üretilmiştir.Çiçero tarafından yazılan 1.10.32 ve 1.10.33 bölümleri de 1914 H.Rackham çevirisinden alınan İngilizce sürümleri eşliğinde özgün biçiminden yeniden üretilmiştir.', N'postImages/defaultThumbnail.jpg', CAST(0x0740C11FF3C2E5420B AS DateTime2), 666, 250, N'Dart Developer', N'Dart, Flutter, Android, IOS, Mobil', N'Dart, Flutter, Android, IOS, Mobil', 1, 1, CAST(0x0740C11FF3C2E5420B AS DateTime2), CAST(0x0740C11FF3C2E5420B AS DateTime2), 0, 1, N'Migration', N'Migration', N'İlk Java Paylaşımı')
SET IDENTITY_INSERT [dbo].[Articles] OFF
/****** Object:  Table [dbo].[UserTokens]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 08/27/2021 18:54:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](1000) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByName] [nvarchar](50) NOT NULL,
	[ModifiedByName] [nvarchar](50) NOT NULL,
	[Note] [nvarchar](500) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Comments_ArticleId] ON [dbo].[Comments] 
(
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Comments] ON
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (1, N'Lorem Ipsum pasajlarının birçok çeşitlemesi vardır. Ancak bunların büyük bir çoğunluğu mizah katılarak veya rastgele sözcükler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı sözcükler gizlenmediğinden emin olmanız gerekir. İnternet''teki tüm Lorem Ipsum üreteçleri önceden belirlenmiş metin bloklarını yineler. Bu da, bu üreteci İnternet üzerindeki gerçek Lorem Ipsum üreteci yapar. Bu üreteç, 200''den fazla Latince sözcük ve onlara ait cümle yapılarını içeren bir sözlük kullanır. Bu nedenle, üretilen Lorem Ipsum metinleri yinelemelerden, mizahtan ve karakteristik olmayan sözcüklerden uzaktır.', 1, CAST(0x07A16EAC21BEE3420B AS DateTime2), CAST(0x071533FAFEB0EB420B AS DateTime2), 1, 0, N'InitialCreate', N'adminuser', N'C# Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (2, N'Lorem Ipsum jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker', 2, CAST(0x07E66EAC21BEE3420B AS DateTime2), CAST(0x07E76EAC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'C++ Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (5, N'Lorem Ipsum este pur şi simplu o machetă pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei încă din secolul al XVI-lea, când un tipograf anonim a luat o planşetă de litere şi le-a amestecat pentru a crea o carte demonstrativă pentru literele respective. Nu doar că a supravieţuit timp de cinci secole, dar şi a facut saltul în tipografia electronică practic neschimbată. A fost popularizată în anii ''60 odată cu ieşirea colilor Letraset care conţineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.', 5, CAST(0x07F66EAC21BEE3420B AS DateTime2), CAST(0x07D91B5C6CB8E4420B AS DateTime2), 0, 1, N'InitialCreate', N'adminuser', N'Java Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (6, N'Lorem Ipsum je jednostavno probni tekst koji se koristi u tiskarskoj i slovoslagarskoj industriji. Lorem Ipsum postoji kao industrijski standard još od 16-og stoljeća, kada je nepoznati tiskar uzeo tiskarsku galiju slova i posložio ih da bi napravio knjigu s uzorkom tiska. Taj je tekst ne samo preživio pet stoljeća, već se i vinuo u svijet elektronskog slovoslagarstva, ostajući u suštini nepromijenjen. Postao je popularan tijekom 1960-ih s pojavom Letraset listova s odlomcima Lorem Ipsum-a, a u skorije vrijeme sa software-om za stolno izdavaštvo kao što je Aldus PageMaker koji također sadrži varijante Lorem Ipsum-a.', 6, CAST(0x07FB6EAC21BEE3420B AS DateTime2), CAST(0x07FC6EAC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Python Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (7, N'Lorem Ipsum – tas ir teksta salikums, kuru izmanto poligrāfijā un maketēšanas darbos. Lorem Ipsum ir kļuvis par vispārpieņemtu teksta aizvietotāju kopš 16. gadsimta sākuma. Tajā laikā kāds nezināms iespiedējs izveidoja teksta fragmentu, lai nodrukātu grāmatu ar burtu paraugiem. Tas ir ne tikai pārdzīvojis piecus gadsimtus, bet bez ievērojamām izmaiņām saglabājies arī mūsdienās, pārejot uz datorizētu teksta apstrādi. Tā popularizēšanai 60-tajos gados kalpoja Letraset burtu paraugu publicēšana ar Lorem Ipsum teksta fragmentiem un, nesenā pagātnē, tādas maketēšanas programmas kā Aldus PageMaker, kuras šablonu paraugos ir izmantots Lorem Ipsum teksts.', 7, CAST(0x07006FAC21BEE3420B AS DateTime2), CAST(0x070E602C01B1EB420B AS DateTime2), 1, 0, N'InitialCreate', N'adminuser', N'Php Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (8, N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 8, CAST(0x07056FAC21BEE3420B AS DateTime2), CAST(0x07066FAC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Kotlin Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (9, N'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.', 9, CAST(0x070A6FAC21BEE3420B AS DateTime2), CAST(0x070B6FAC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Swift Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (10, N'Lorem Ipsum，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。', 10, CAST(0x070F6FAC21BEE3420B AS DateTime2), CAST(0x07106FAC21BEE3420B AS DateTime2), 0, 1, N'InitialCreate', N'InitialCreate', N'Ruby Makale Yorumu')
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (11, N'bu benim ilk yorumum.', 17, CAST(0x07DE80017B0DE7420B AS DateTime2), CAST(0x0710AA0D6270E8420B AS DateTime2), 1, 1, N'mevlüt ince', N'adminuser', NULL)
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (12, N'test yorumu', 17, CAST(0x070E3366A50DE7420B AS DateTime2), CAST(0x077DA4746470E8420B AS DateTime2), 1, 1, N'mevlüt ince', N'adminuser', NULL)
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (13, N'denemeye devam', 17, CAST(0x07376C1EB40DE7420B AS DateTime2), CAST(0x0730E3A56670E8420B AS DateTime2), 1, 1, N'mevlüt ince', N'adminuser', NULL)
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (15, N'deneme1', 17, CAST(0x07140F826F70E8420B AS DateTime2), CAST(0x0798295E9F70E8420B AS DateTime2), 0, 1, N'mevlüt ince', N'adminuser', NULL)
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (16, N'deneme yorumu 2', 17, CAST(0x070A63AD9870E8420B AS DateTime2), CAST(0x071B4278A170E8420B AS DateTime2), 0, 1, N'fatma', N'adminuser', NULL)
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (17, N'dbu ikinci yorum olacak', 2, CAST(0x07C186A47174E8420B AS DateTime2), CAST(0x078AEAB7A274E8420B AS DateTime2), 0, 1, N'ahmet yıldız', N'adminuser', NULL)
INSERT [dbo].[Comments] ([Id], [Text], [ArticleId], [CreatedDate], [ModifiedDate], [IsDeleted], [IsActive], [CreatedByName], [ModifiedByName], [Note]) VALUES (18, N'mertin yorumu', 10, CAST(0x072035F6BD74E8420B AS DateTime2), CAST(0x07872042C574E8420B AS DateTime2), 0, 1, N'mert', N'adminuser', NULL)
SET IDENTITY_INSERT [dbo].[Comments] OFF
/****** Object:  ForeignKey [FK_UserRoles_Roles_RoleId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Roles_RoleId]
GO
/****** Object:  ForeignKey [FK_UserRoles_Users_UserId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Users_UserId]
GO
/****** Object:  ForeignKey [FK_UserLogins_Users_UserId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[UserLogins]  WITH CHECK ADD  CONSTRAINT [FK_UserLogins_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserLogins] CHECK CONSTRAINT [FK_UserLogins_Users_UserId]
GO
/****** Object:  ForeignKey [FK_UserClaims_Users_UserId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[UserClaims]  WITH CHECK ADD  CONSTRAINT [FK_UserClaims_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserClaims] CHECK CONSTRAINT [FK_UserClaims_Users_UserId]
GO
/****** Object:  ForeignKey [FK_RoleClaims_Roles_RoleId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[RoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_RoleClaims_Roles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RoleClaims] CHECK CONSTRAINT [FK_RoleClaims_Roles_RoleId]
GO
/****** Object:  ForeignKey [FK_Articles_Categories_CategoryId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Categories_CategoryId]
GO
/****** Object:  ForeignKey [FK_Articles_Users_UserId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_Articles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_Articles_Users_UserId]
GO
/****** Object:  ForeignKey [FK_UserTokens_Users_UserId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[UserTokens]  WITH CHECK ADD  CONSTRAINT [FK_UserTokens_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserTokens] CHECK CONSTRAINT [FK_UserTokens_Users_UserId]
GO
/****** Object:  ForeignKey [FK_Comments_Articles_ArticleId]    Script Date: 08/27/2021 18:54:24 ******/
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Articles_ArticleId] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Articles_ArticleId]
GO
