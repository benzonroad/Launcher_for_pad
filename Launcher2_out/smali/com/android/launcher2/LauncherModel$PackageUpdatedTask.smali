.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
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
    name = "PackageUpdatedTask"
.end annotation


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1517
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 1518
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    .line 1524
    .local v6, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1525
    .local v12, packages:[Ljava/lang/String;
    array-length v2, v12

    .line 1526
    .local v2, N:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1548
    :cond_0
    const/4 v3, 0x0

    .line 1549
    .local v3, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v14, 0x0

    .line 1550
    .local v14, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 1552
    .local v10, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1556
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_2

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1559
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/ApplicationInfo;

    .line 1560
    .local v9, info:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v16

    iget-object v0, v9, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1528
    .end local v3           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v10           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v14           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :pswitch_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v2, :cond_0

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    aget-object v17, v12, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1528
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1534
    .end local v7           #i:I
    :pswitch_1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v2, :cond_0

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    aget-object v17, v12, v7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1534
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1541
    .end local v7           #i:I
    :pswitch_2
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    if-ge v7, v2, :cond_0

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    aget-object v17, v12, v7

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 1541
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1563
    .end local v7           #i:I
    .restart local v3       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v10       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v14       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v16

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1568
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object/from16 v5, v16

    .line 1569
    .local v5, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_4
    if-nez v5, :cond_5

    .line 1570
    const-string v16, "Launcher.Model"

    const-string v17, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :goto_5
    return-void

    .line 1568
    .end local v5           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 1574
    .restart local v5       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_5
    if-eqz v3, :cond_6

    .line 1575
    move-object v4, v3

    .line 1576
    .local v4, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1585
    .end local v4           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_6
    if-eqz v10, :cond_7

    .line 1586
    move-object v11, v10

    .line 1587
    .local v11, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v11}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1596
    .end local v11           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_7
    if-eqz v14, :cond_8

    .line 1597
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1598
    .local v13, permanent:Z
    :goto_6
    move-object v15, v14

    .line 1599
    .local v15, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v15, v13}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1609
    .end local v13           #permanent:Z
    .end local v15           #removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v16, v0

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v16

    new-instance v17, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 1597
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 1526
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
