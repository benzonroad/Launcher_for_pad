.class Lcom/android/launcher2/Win8WidgetTwo$1;
.super Landroid/os/AsyncTask;
.source "Win8WidgetTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Win8WidgetTwo;->changeVoie(Landroid/content/Context;)V
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
.field final synthetic this$0:Lcom/android/launcher2/Win8WidgetTwo;

.field final synthetic val$am:Landroid/media/AudioManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Win8WidgetTwo;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->this$0:Lcom/android/launcher2/Win8WidgetTwo;

    iput-object p2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 304
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Win8WidgetTwo$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->this$0:Lcom/android/launcher2/Win8WidgetTwo;

    #getter for: Lcom/android/launcher2/Win8WidgetTwo;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/launcher2/Win8WidgetTwo;->access$000(Lcom/android/launcher2/Win8WidgetTwo;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->this$0:Lcom/android/launcher2/Win8WidgetTwo;

    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$context:Landroid/content/Context;

    const-string v3, "volue"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    #setter for: Lcom/android/launcher2/Win8WidgetTwo;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1, v2}, Lcom/android/launcher2/Win8WidgetTwo;->access$002(Lcom/android/launcher2/Win8WidgetTwo;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->this$0:Lcom/android/launcher2/Win8WidgetTwo;

    #getter for: Lcom/android/launcher2/Win8WidgetTwo;->sp:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/launcher2/Win8WidgetTwo;->access$000(Lcom/android/launcher2/Win8WidgetTwo;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 312
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "volue"

    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v1, v5, v6, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 318
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :goto_0
    const-string v1, "MyIconWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mVolue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    return-object v1

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->val$am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/launcher2/Win8WidgetTwo$1;->this$0:Lcom/android/launcher2/Win8WidgetTwo;

    #getter for: Lcom/android/launcher2/Win8WidgetTwo;->sp:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/launcher2/Win8WidgetTwo;->access$000(Lcom/android/launcher2/Win8WidgetTwo;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "volue"

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v5, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method
