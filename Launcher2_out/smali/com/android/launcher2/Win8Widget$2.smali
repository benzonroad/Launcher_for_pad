.class Lcom/android/launcher2/Win8Widget$2;
.super Landroid/os/AsyncTask;
.source "Win8Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Win8Widget;->changeRotation(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Win8Widget;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Win8Widget;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/launcher2/Win8Widget$2;->this$0:Lcom/android/launcher2/Win8Widget;

    iput-object p2, p0, Lcom/android/launcher2/Win8Widget$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8Widget$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 496
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 498
    .local v1, wm:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/launcher2/Win8Widget$2;->val$context:Landroid/content/Context;

    #calls: Lcom/android/launcher2/Win8Widget;->getAutoRotation(Landroid/content/Context;)Z
    invoke-static {v2}, Lcom/android/launcher2/Win8Widget;->access$000(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 506
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 501
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 504
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "MyIconWidget"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
