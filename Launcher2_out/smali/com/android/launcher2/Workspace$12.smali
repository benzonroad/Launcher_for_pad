.class Lcom/android/launcher2/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$cellLayout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$container:J

.field final synthetic val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;JILcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$12;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iput-wide p3, p0, Lcom/android/launcher2/Workspace$12;->val$container:J

    iput p5, p0, Lcom/android/launcher2/Workspace$12;->val$screen:I

    iput-object p6, p0, Lcom/android/launcher2/Workspace$12;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3309
    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 3319
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$12;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3311
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$12;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-wide v2, p0, Lcom/android/launcher2/Workspace$12;->val$container:J

    iget v4, p0, Lcom/android/launcher2/Workspace$12;->val$screen:I

    iget-object v5, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mTargetCell:[I
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$3100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I)V

    .line 3322
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->val$cellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 3323
    return-void

    .line 3315
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$2700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$12;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget-object v1, v1, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/android/launcher2/Workspace$12;->val$container:J

    iget v4, p0, Lcom/android/launcher2/Workspace$12;->val$screen:I

    iget-object v5, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mTargetCell:[I
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$3100(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    goto :goto_0

    .line 3309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
