.class Lcom/android/launcher2/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon;

.field final synthetic val$item:Lcom/android/launcher2/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    iput-object p2, p0, Lcom/android/launcher2/FolderIcon$2;->val$item:Lcom/android/launcher2/ShortcutInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    iget-object v1, p0, Lcom/android/launcher2/FolderIcon$2;->val$item:Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 369
    return-void
.end method
