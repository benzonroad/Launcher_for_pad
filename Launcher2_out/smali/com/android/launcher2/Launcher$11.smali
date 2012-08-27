.class Lcom/android/launcher2/Launcher$11;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1462
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1463
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1464
    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mUserPresent:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/Launcher;->access$1602(Lcom/android/launcher2/Launcher;Z)Z

    .line 1465
    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mDragLayer:Lcom/android/launcher2/DragLayer;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1700(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1466
    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->updateRunning()V
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1800(Lcom/android/launcher2/Launcher;)V

    .line 1470
    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mAppsCustomizeTabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mPendingAddInfo:Lcom/android/launcher2/ItemInfo;
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x1

    #setter for: Lcom/android/launcher2/Launcher;->mUserPresent:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/Launcher;->access$1602(Lcom/android/launcher2/Launcher;Z)Z

    .line 1476
    iget-object v1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    #calls: Lcom/android/launcher2/Launcher;->updateRunning()V
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$1800(Lcom/android/launcher2/Launcher;)V

    goto :goto_0
.end method
