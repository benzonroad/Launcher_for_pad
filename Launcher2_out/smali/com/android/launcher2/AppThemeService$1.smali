.class Lcom/android/launcher2/AppThemeService$1;
.super Landroid/os/Handler;
.source "AppThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppThemeService;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppThemeService;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/launcher2/AppThemeService$1;->this$0:Lcom/android/launcher2/AppThemeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/launcher2/AppThemeService$1;->this$0:Lcom/android/launcher2/AppThemeService;

    invoke-virtual {v1}, Lcom/android/launcher2/AppThemeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 26
    .local v0, la:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->onCreate()V

    .line 27
    iget-object v1, p0, Lcom/android/launcher2/AppThemeService$1;->this$0:Lcom/android/launcher2/AppThemeService;

    invoke-virtual {v1}, Lcom/android/launcher2/AppThemeService;->stopSelf()V

    .line 28
    return-void
.end method
