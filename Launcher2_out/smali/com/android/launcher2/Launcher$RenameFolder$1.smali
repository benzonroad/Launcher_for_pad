.class Lcom/android/launcher2/Launcher$RenameFolder$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$RenameFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/android/launcher2/Launcher$RenameFolder$1;->this$1:Lcom/android/launcher2/Launcher$RenameFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/android/launcher2/Launcher$RenameFolder$1;->this$1:Lcom/android/launcher2/Launcher$RenameFolder;

    #calls: Lcom/android/launcher2/Launcher$RenameFolder;->cleanup()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher$RenameFolder;->access$2500(Lcom/android/launcher2/Launcher$RenameFolder;)V

    .line 2518
    return-void
.end method
