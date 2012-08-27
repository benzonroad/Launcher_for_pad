.class final Lcom/android/launcher2/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZLjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$notify:Z

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$4;->val$notify:Z

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$notify:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 443
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: ItemInfo id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addItemToDatabase already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0

    .line 448
    :cond_1
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 464
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 451
    :pswitch_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 457
    :cond_3
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :pswitch_3
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
