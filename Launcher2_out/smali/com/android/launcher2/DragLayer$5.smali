.class Lcom/android/launcher2/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/launcher2/DragLayer;->access$402(Lcom/android/launcher2/DragLayer;Landroid/view/View;)Landroid/view/View;

    .line 615
    return-void
.end method
