.class Lcom/android/launcher2/Win8WidgetService$1;
.super Landroid/content/BroadcastReceiver;
.source "Win8WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Win8WidgetService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Win8WidgetService;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Win8WidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/launcher2/Win8WidgetService$1;->this$0:Lcom/android/launcher2/Win8WidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, timeIntent:Landroid/content/Intent;
    sget-object v1, Lcom/android/launcher2/Win8WidgetService;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetService$1;->this$0:Lcom/android/launcher2/Win8WidgetService;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Win8WidgetService;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void
.end method
