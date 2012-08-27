.class Lcom/android/launcher2/DragLayer$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/DragLayer$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$1$1;->this$1:Lcom/android/launcher2/DragLayer$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$1$1;->this$1:Lcom/android/launcher2/DragLayer$1;

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$1$1;->this$1:Lcom/android/launcher2/DragLayer$1;

    iget-object v0, v0, Lcom/android/launcher2/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 488
    :cond_0
    return-void
.end method
