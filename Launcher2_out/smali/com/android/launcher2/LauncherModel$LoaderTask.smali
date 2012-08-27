.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadAndBindStepFinished:Z

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 754
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    .line 756
    return-void
.end method

.method static synthetic access$202(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    return p1
.end method

.method private bindWorkspace()V
    .locals 14

    .prologue
    .line 1222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1226
    .local v10, t:J
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1227
    .local v2, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v2, :cond_0

    .line 1229
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask running with no launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1244
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #calls: Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1247
    .local v3, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1248
    .local v6, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 1249
    move v4, v9

    .line 1250
    .local v4, start:I
    add-int/lit8 v0, v9, 0x6

    if-gt v0, v6, :cond_1

    const/4 v5, 0x6

    .line 1251
    .local v5, chunkSize:I
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v13

    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;II)V

    invoke-virtual {v13, v0}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1248
    add-int/lit8 v9, v9, 0x6

    goto :goto_1

    .line 1250
    .end local v5           #chunkSize:I
    :cond_1
    sub-int v5, v6, v9

    goto :goto_2

    .line 1261
    .end local v4           #start:I
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1262
    .local v8, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    invoke-direct {v1, p0, v2, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1271
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1283
    invoke-interface {v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v7

    .line 1284
    .local v7, currentScreen:I
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1286
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_4

    .line 1287
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1288
    .local v12, widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget v0, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v0, v7, :cond_3

    .line 1289
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    invoke-direct {v1, p0, v2, v12}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1286
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1300
    .end local v12           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_6

    .line 1301
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1302
    .restart local v12       #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget v0, v12, Lcom/android/launcher2/ItemInfo;->screen:I

    if-eq v0, v7, :cond_5

    .line 1303
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    invoke-direct {v1, p0, v2, v12}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1300
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1314
    .end local v12           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1323
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    invoke-direct {v1, p0, v10, v11}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z
    .locals 10
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 928
    iget v0, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 929
    .local v0, containerIndex:I
    iget-wide v5, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 931
    iget v5, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v5}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 970
    :goto_0
    return v3

    .line 937
    :cond_0
    aget-object v5, p1, v9

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v5, v5, v6

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 938
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut into hotseat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into position ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v9

    iget v7, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :cond_1
    aget-object v5, p1, v9

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    aget-object v5, v5, v6

    aput-object p2, v5, v3

    move v3, v4

    .line 944
    goto :goto_0

    .line 946
    :cond_2
    iget-wide v5, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    move v3, v4

    .line 948
    goto :goto_0

    .line 952
    :cond_3
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .local v1, x:I
    :goto_1
    iget v5, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_6

    .line 953
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .local v2, y:I
    :goto_2
    iget v5, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_5

    .line 954
    aget-object v5, p1, v0

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    if-eqz v5, :cond_4

    .line 955
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into cell ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v0

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 953
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 952
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 964
    .end local v2           #y:I
    :cond_6
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    :goto_3
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    add-int/2addr v3, v5

    if-ge v1, v3, :cond_8

    .line 965
    iget v2, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .restart local v2       #y:I
    :goto_4
    iget v3, p2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_7

    .line 966
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aput-object p2, v3, v2

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 964
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v2           #y:I
    :cond_8
    move v3, v4

    .line 970
    goto/16 :goto_0
.end method

.method private loadAllAppsByBatch()V
    .locals 29

    .prologue
    .line 1378
    const-wide/16 v20, 0x0

    .line 1382
    .local v20, t:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1383
    .local v13, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v13, :cond_1

    .line 1385
    const-string v24, "Launcher.Model"

    const-string v25, "LoaderTask running with no launcher (loadAllAppsByBatch)"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_0
    return-void

    .line 1389
    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1390
    .local v12, mainIntent:Landroid/content/Intent;
    const-string v24, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1393
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1395
    .local v6, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v4, 0x7fffffff

    .line 1398
    .local v4, N:I
    const/4 v10, 0x0

    .line 1399
    .local v10, i:I
    const/4 v7, -0x1

    .line 1400
    .local v7, batchSize:I
    :cond_2
    :goto_0
    if-ge v10, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 1401
    if-nez v10, :cond_3

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/AllAppsList;->clear()V

    .line 1403
    const-wide/16 v15, 0x0

    .line 1404
    .local v15, qiaTime:J
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1409
    if-eqz v6, :cond_0

    .line 1412
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1416
    if-eqz v4, :cond_0

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mBatchSize:I
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)I

    move-result v24

    if-nez v24, :cond_4

    .line 1421
    move v7, v4

    .line 1426
    :goto_1
    const-wide/16 v17, 0x0

    .line 1427
    .local v17, sortTime:J
    new-instance v24, Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v14, v1}, Lcom/android/launcher2/LauncherModel$ShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V

    move-object/from16 v0, v24

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1435
    .end local v15           #qiaTime:J
    .end local v17           #sortTime:J
    :cond_3
    const-wide/16 v22, 0x0

    .line 1437
    .local v22, t2:J
    move/from16 v19, v10

    .line 1438
    .local v19, startIndex:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    if-ge v10, v4, :cond_5

    if-ge v11, v7, :cond_5

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v25

    new-instance v26, Lcom/android/launcher2/ApplicationInfo;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v27, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;
    invoke-static/range {v27 .. v27}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;Ljava/util/HashMap;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 1442
    add-int/lit8 v10, v10, 0x1

    .line 1438
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1423
    .end local v11           #j:I
    .end local v19           #startIndex:I
    .end local v22           #t2:J
    .restart local v15       #qiaTime:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mBatchSize:I
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)I

    move-result v7

    goto :goto_1

    .line 1445
    .end local v15           #qiaTime:J
    .restart local v11       #j:I
    .restart local v19       #startIndex:I
    .restart local v22       #t2:J
    :cond_5
    if-gt v10, v7, :cond_6

    const/4 v9, 0x1

    .line 1446
    .local v9, first:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v8

    .line 1447
    .local v8, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1448
    .local v5, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v24

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v24

    new-instance v25, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)I

    move-result v24

    if-lez v24, :cond_2

    if-ge v10, v4, :cond_2

    .line 1479
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I
    invoke-static/range {v24 .. v24}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1480
    :catch_0
    move-exception v24

    goto/16 :goto_0

    .line 1445
    .end local v5           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v8           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v9           #first:Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private loadAndBindAllApps()V
    .locals 2

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1338
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllAppsByBatch()V

    .line 1339
    monitor-enter p0

    .line 1340
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1341
    monitor-exit p0

    .line 1348
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$1102(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1344
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1346
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->onlyBindAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 770
    monitor-enter p0

    .line 771
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 772
    monitor-exit p0

    .line 780
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->access$102(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadWorkspace()V
    .locals 52

    .prologue
    .line 974
    const-wide/16 v48, 0x0

    .line 976
    .local v48, t:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 977
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 978
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v42

    .line 979
    .local v42, manager:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v51

    .line 980
    .local v51, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v42 .. v42}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v37

    .line 982
    .local v37, isSafeMode:Z
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 983
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 984
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 985
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 986
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 988
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v40, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 996
    .local v8, c:Landroid/database/Cursor;
    const/4 v4, 0x6

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$800()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/android/launcher2/ItemInfo;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [[[Lcom/android/launcher2/ItemInfo;

    .line 1000
    .local v43, occupied:[[[Lcom/android/launcher2/ItemInfo;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1001
    .local v33, idIndex:I
    const-string v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1003
    .local v36, intentIndex:I
    const-string v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1005
    .local v10, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1007
    .local v14, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1008
    .local v9, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1010
    .local v15, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1012
    .local v16, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1014
    .local v26, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1016
    .local v39, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 1018
    .local v20, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 1020
    .local v45, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1022
    .local v22, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1024
    .local v23, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 1026
    .local v46, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 1028
    .local v47, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1029
    .local v50, uriIndex:I
    const-string v4, "displayMode"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1039
    .local v27, displayModeIndex:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 1041
    :try_start_1
    move/from16 v0, v39

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 1043
    .local v38, itemType:I
    packed-switch v38, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1046
    :pswitch_1
    move/from16 v0, v36

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v35

    .line 1048
    .local v35, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v35

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 1053
    .local v6, intent:Landroid/content/Intent;
    if-nez v38, :cond_1

    .line 1054
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLabelCache:Ljava/util/HashMap;

    move-object/from16 v5, v42

    move-object v7, v13

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IILjava/util/HashMap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v34

    .line 1062
    .local v34, info:Lcom/android/launcher2/ShortcutInfo;
    :goto_1
    if-eqz v34, :cond_2

    .line 1063
    move-object/from16 v0, v34

    iput-object v6, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1064
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v34

    iput-wide v4, v0, Lcom/android/launcher2/ItemInfo;->id:J

    .line 1065
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1066
    .local v25, container:I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v34

    iput-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1067
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1068
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1069
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v34

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1076
    packed-switch v25, :pswitch_data_1

    .line 1083
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    move/from16 v0, v25

    int-to-long v11, v0

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    invoke-static {v4, v11, v12}, Lcom/android/launcher2/LauncherModel;->access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v29

    .line 1085
    .local v29, folderInfo:Lcom/android/launcher2/FolderInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 1088
    .end local v29           #folderInfo:Lcom/android/launcher2/FolderInfo;
    :goto_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v34

    invoke-virtual {v4, v5, v0, v8, v9}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1174
    .end local v6           #intent:Landroid/content/Intent;
    .end local v25           #container:I
    .end local v34           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v35           #intentDescription:Ljava/lang/String;
    .end local v38           #itemType:I
    :catch_0
    move-exception v28

    .line 1175
    .local v28, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1179
    .end local v9           #iconIndex:I
    .end local v10           #titleIndex:I
    .end local v14           #iconTypeIndex:I
    .end local v15           #iconPackageIndex:I
    .end local v16           #iconResourceIndex:I
    .end local v20           #appWidgetIdIndex:I
    .end local v22           #cellXIndex:I
    .end local v23           #cellYIndex:I
    .end local v26           #containerIndex:I
    .end local v27           #displayModeIndex:I
    .end local v28           #e:Ljava/lang/Exception;
    .end local v33           #idIndex:I
    .end local v36           #intentIndex:I
    .end local v39           #itemTypeIndex:I
    .end local v45           #screenIndex:I
    .end local v46           #spanXIndex:I
    .end local v47           #spanYIndex:I
    .end local v50           #uriIndex:I
    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1049
    .restart local v9       #iconIndex:I
    .restart local v10       #titleIndex:I
    .restart local v14       #iconTypeIndex:I
    .restart local v15       #iconPackageIndex:I
    .restart local v16       #iconResourceIndex:I
    .restart local v20       #appWidgetIdIndex:I
    .restart local v22       #cellXIndex:I
    .restart local v23       #cellYIndex:I
    .restart local v26       #containerIndex:I
    .restart local v27       #displayModeIndex:I
    .restart local v33       #idIndex:I
    .restart local v35       #intentDescription:Ljava/lang/String;
    .restart local v36       #intentIndex:I
    .restart local v38       #itemType:I
    .restart local v39       #itemTypeIndex:I
    .restart local v45       #screenIndex:I
    .restart local v46       #spanXIndex:I
    .restart local v47       #spanYIndex:I
    .restart local v50       #uriIndex:I
    :catch_1
    move-exception v28

    .local v28, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1057
    .end local v28           #e:Ljava/net/URISyntaxException;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object v12, v8

    move/from16 v17, v9

    move/from16 v18, v10

    #calls: Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    invoke-static/range {v11 .. v18}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v34

    .restart local v34       #info:Lcom/android/launcher2/ShortcutInfo;
    goto/16 :goto_1

    .line 1079
    .restart local v25       #container:I
    :pswitch_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1098
    .end local v25           #container:I
    :cond_2
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1099
    .local v31, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v4, 0x0

    move-wide/from16 v0, v31

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1106
    .end local v6           #intent:Landroid/content/Intent;
    .end local v31           #id:J
    .end local v34           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v35           #intentDescription:Ljava/lang/String;
    :pswitch_3
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1107
    .restart local v31       #id:J
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v31

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;

    move-result-object v29

    .line 1109
    .restart local v29       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1110
    move-wide/from16 v0, v31

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/launcher2/ItemInfo;->id:J

    .line 1111
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1112
    .restart local v25       #container:I
    move/from16 v0, v25

    int-to-long v4, v0

    move-object/from16 v0, v29

    iput-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1113
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1114
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1115
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v29

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1118
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1121
    packed-switch v25, :pswitch_data_2

    .line 1128
    :goto_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-wide v11, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-wide v11, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1124
    :pswitch_4
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1134
    .end local v25           #container:I
    .end local v29           #folderInfo:Lcom/android/launcher2/FolderInfo;
    .end local v31           #id:J
    :pswitch_5
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1135
    .local v19, appWidgetId:I
    move/from16 v0, v33

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 1137
    .restart local v31       #id:J
    move-object/from16 v0, v51

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v44

    .line 1140
    .local v44, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v37, :cond_4

    if-eqz v44, :cond_3

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    move-object/from16 v0, v44

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1142
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1144
    .local v41, log:Ljava/lang/String;
    const-string v4, "Launcher.Model"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    sget-object v4, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1148
    .end local v41           #log:Ljava/lang/String;
    :cond_4
    new-instance v21, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 1149
    .local v21, appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-wide/from16 v0, v31

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher2/ItemInfo;->id:J

    .line 1150
    move/from16 v0, v45

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 1151
    move/from16 v0, v22

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 1152
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 1153
    move/from16 v0, v46

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1154
    move/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1156
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1157
    .restart local v25       #container:I
    const/16 v4, -0x64

    move/from16 v0, v25

    if-eq v0, v4, :cond_5

    const/16 v4, -0x65

    move/from16 v0, v25

    if-eq v0, v4, :cond_5

    .line 1159
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1163
    :cond_5
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    iput-wide v4, v0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 1166
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1169
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget-wide v11, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1179
    .end local v19           #appWidgetId:I
    .end local v21           #appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v25           #container:I
    .end local v31           #id:J
    .end local v38           #itemType:I
    .end local v44           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1182
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1183
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v24

    .line 1186
    .local v24, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 1192
    .restart local v31       #id:J
    const/4 v4, 0x0

    :try_start_6
    move-wide/from16 v0, v31

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 1194
    :catch_2
    move-exception v28

    .line 1195
    .local v28, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not remove id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v31

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1216
    .end local v24           #client:Landroid/content/ContentProviderClient;
    .end local v28           #e:Landroid/os/RemoteException;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #id:J
    :cond_7
    return-void

    .line 1043
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch -0x65
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1121
    :pswitch_data_2
    .packed-switch -0x65
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private onlyBindAllApps()V
    .locals 4

    .prologue
    .line 1351
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1352
    .local v1, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v1, :cond_0

    .line 1354
    const-string v2, "Launcher.Model"

    const-string v3, "LoaderTask running with no launcher (onlyBindAllApps)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1361
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private waitForIdle()V
    .locals 4

    .prologue
    .line 786
    monitor-enter p0

    .line 787
    const-wide/16 v0, 0x0

    .line 789
    .local v0, workspaceWaitTime:J
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 801
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 803
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v2

    goto :goto_0

    .line 813
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1492
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mWaitThread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mLoadAndBindStepFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mLoadAndBindStepFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 820
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v6}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 821
    .local v0, cbk:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->isAllAppsVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 826
    .local v3, loadWorkspaceFirst:Z
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 829
    :try_start_0
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 831
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    if-eqz v3, :cond_3

    .line 834
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 840
    :goto_2
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_4

    .line 872
    :goto_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 873
    .local v2, key:Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;[B)V

    goto :goto_4

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #loadWorkspaceFirst:Z
    :cond_1
    move v3, v4

    .line 821
    goto :goto_0

    .restart local v3       #loadWorkspaceFirst:Z
    :cond_2
    move v4, v5

    .line 829
    goto :goto_1

    .line 831
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 837
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    goto :goto_2

    .line 846
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 847
    :try_start_2
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v4, :cond_5

    .line 849
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 851
    :cond_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 852
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    .line 855
    if-eqz v3, :cond_6

    .line 857
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 864
    :goto_5
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 865
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 866
    monitor-exit v5

    goto :goto_3

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 851
    :catchall_2
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4

    .line 860
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    goto :goto_5

    .line 875
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_7
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 879
    iput-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 881
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 883
    :try_start_5
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    move-result-object v4

    if-ne v4, p0, :cond_8

    .line 884
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    #setter for: Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    invoke-static {v4, v6}, Lcom/android/launcher2/LauncherModel;->access$602(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 886
    :cond_8
    monitor-exit v5

    .line 887
    return-void

    .line 886
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v4
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 890
    monitor-enter p0

    .line 891
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    .line 892
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 893
    monitor-exit p0

    .line 894
    return-void

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 905
    :try_start_0
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 906
    monitor-exit v2

    move-object v0, v1

    .line 922
    :goto_0
    return-object v0

    .line 909
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 910
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 913
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 914
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 915
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 917
    :cond_2
    if-nez v0, :cond_3

    .line 918
    const-string v3, "Launcher.Model"

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 922
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 923
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
