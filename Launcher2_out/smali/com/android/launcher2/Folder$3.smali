.class Lcom/android/launcher2/Folder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    const/4 v2, 0x2

    #setter for: Lcom/android/launcher2/Folder;->mState:I
    invoke-static {v1, v2}, Lcom/android/launcher2/Folder;->access$202(Lcom/android/launcher2/Folder;I)I

    .line 431
    iget-object v1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->showFirstRunFoldersCling()Lcom/android/launcher2/Cling;

    move-result-object v0

    .line 432
    .local v0, cling:Lcom/android/launcher2/Cling;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcom/android/launcher2/Cling;->bringToFront()V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    #calls: Lcom/android/launcher2/Folder;->setFocusOnFirstChild()V
    invoke-static {v1}, Lcom/android/launcher2/Folder;->access$300(Lcom/android/launcher2/Folder;)V

    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x1

    .line 422
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    #getter for: Lcom/android/launcher2/Folder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$000(Lcom/android/launcher2/Folder;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v5, v5, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/launcher2/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Folder;->access$100(Lcom/android/launcher2/Folder;ILjava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    #setter for: Lcom/android/launcher2/Folder;->mState:I
    invoke-static {v0, v6}, Lcom/android/launcher2/Folder;->access$202(Lcom/android/launcher2/Folder;I)I

    .line 426
    return-void
.end method
