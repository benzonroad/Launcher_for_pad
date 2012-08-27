.class Lcom/android/launcher2/AppThemeService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 67
    iput-object p1, p0, Lcom/android/launcher2/AppThemeService$2;->this$0:Lcom/android/launcher2/AppThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/AppThemeService$2;->this$0:Lcom/android/launcher2/AppThemeService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.letou.launcher.RELOAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppThemeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/AppThemeService$2;->this$0:Lcom/android/launcher2/AppThemeService;

    iget-object v0, v0, Lcom/android/launcher2/AppThemeService;->mhHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    return-void
.end method
