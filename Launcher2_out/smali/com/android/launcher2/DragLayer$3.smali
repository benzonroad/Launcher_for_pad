.class Lcom/android/launcher2/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field final synthetic val$fadeOut:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/launcher2/DragLayer$3;->val$fadeOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DragLayer$3;->val$fadeOut:Z

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    #calls: Lcom/android/launcher2/DragLayer;->fadeOutDragView()V
    invoke-static {v0}, Lcom/android/launcher2/DragLayer;->access$300(Lcom/android/launcher2/DragLayer;)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/launcher2/DragLayer;->access$402(Lcom/android/launcher2/DragLayer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
