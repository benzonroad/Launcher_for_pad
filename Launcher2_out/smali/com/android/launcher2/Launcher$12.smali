.class Lcom/android/launcher2/Launcher$12;
.super Landroid/os/Handler;
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
    .line 1538
    iput-object p1, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 1541
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1542
    const/4 v1, 0x0

    .line 1543
    .local v1, i:I
    iget-object v6, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/launcher2/Launcher;->access$2100(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1544
    .local v3, key:Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mWidgetsToAdvance:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/launcher2/Launcher;->access$2100(Lcom/android/launcher2/Launcher;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1545
    .local v5, v:Landroid/view/View;
    mul-int/lit16 v0, v1, 0xfa

    .line 1546
    .local v0, delay:I
    instance-of v6, v5, Landroid/widget/Advanceable;

    if-eqz v6, :cond_0

    .line 1547
    new-instance v6, Lcom/android/launcher2/Launcher$12$1;

    invoke-direct {v6, p0, v5}, Lcom/android/launcher2/Launcher$12$1;-><init>(Lcom/android/launcher2/Launcher$12;Landroid/view/View;)V

    int-to-long v7, v0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/launcher2/Launcher$12;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1553
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1554
    goto :goto_0

    .line 1555
    .end local v0           #delay:I
    .end local v3           #key:Landroid/view/View;
    .end local v5           #v:Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    const-wide/16 v7, 0x4e20

    #calls: Lcom/android/launcher2/Launcher;->sendAdvanceMessage(J)V
    invoke-static {v6, v7, v8}, Lcom/android/launcher2/Launcher;->access$2200(Lcom/android/launcher2/Launcher;J)V

    .line 1558
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 1559
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 1560
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 1561
    .local v4, mapObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    const-string v6, "THEME_URI"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/Launcher;->appTheme(Ljava/lang/String;)V

    .line 1564
    .end local v4           #mapObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method
