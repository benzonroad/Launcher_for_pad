.class public final Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher$ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListItemView"
.end annotation


# instance fields
.field public imageViewObj:Landroid/widget/ImageView;

.field public textViewObj:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/launcher2/Launcher$ImageAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher$ImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;->this$1:Lcom/android/launcher2/Launcher$ImageAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
