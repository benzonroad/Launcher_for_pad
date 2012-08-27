.class Lcom/android/launcher2/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher2/DragController;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 671
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 674
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    #getter for: Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;
    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    #getter for: Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;
    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->scrollLeft()V

    .line 680
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    #setter for: Lcom/android/launcher2/DragController;->mScrollState:I
    invoke-static {v0, v1}, Lcom/android/launcher2/DragController;->access$102(Lcom/android/launcher2/DragController;I)I

    .line 681
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    #setter for: Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I
    invoke-static {v0, v1}, Lcom/android/launcher2/DragController;->access$202(Lcom/android/launcher2/DragController;I)I

    .line 682
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    #getter for: Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;
    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()Z

    .line 684
    :cond_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    #getter for: Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;
    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 687
    iput p1, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->mDirection:I

    .line 688
    return-void
.end method
