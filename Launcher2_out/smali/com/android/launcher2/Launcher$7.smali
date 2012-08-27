.class Lcom/android/launcher2/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->initDialogContentListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/android/launcher2/Launcher;->mIsShowDialog:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$1102(Lcom/android/launcher2/Launcher;Z)Z

    .line 989
    iget-object v0, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    #getter for: Lcom/android/launcher2/Launcher;->mTransition:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 990
    return-void
.end method
