.class Lcom/android/launcher2/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$onFinishAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$1;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$1;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/launcher2/DragLayer$1;->val$child:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/android/launcher2/DragLayer$1;->val$child:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 481
    .local v0, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 482
    new-instance v1, Lcom/android/launcher2/DragLayer$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DragLayer$1$1;-><init>(Lcom/android/launcher2/DragLayer$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 491
    return-void

    .line 480
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
