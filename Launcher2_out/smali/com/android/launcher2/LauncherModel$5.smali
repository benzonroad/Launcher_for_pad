.class final Lcom/android/launcher2/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$uriToDelete:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$5;->val$uriToDelete:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$5;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$uriToDelete:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 524
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sItemsIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void

    .line 513
    :pswitch_1
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sFolders:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :pswitch_2
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkspaceItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :pswitch_3
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$5;->val$item:Lcom/android/launcher2/ItemInfo;

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
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
