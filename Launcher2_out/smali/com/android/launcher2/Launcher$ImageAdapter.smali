.class Lcom/android/launcher2/Launcher$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1166
    .local p3, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1167
    iput-object p2, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->context:Landroid/content/Context;

    .line 1168
    iput-object p3, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->mObjectList:Ljava/util/ArrayList;

    .line 1169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1203
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1172
    iget-object v2, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1173
    .local v0, from:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 1175
    .local v1, itemView:Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
    if-nez p2, :cond_0

    .line 1176
    new-instance v1, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;

    .end local v1           #itemView:Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;-><init>(Lcom/android/launcher2/Launcher$ImageAdapter;)V

    .line 1177
    .restart local v1       #itemView:Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1179
    const v2, 0x7f060028

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;->imageViewObj:Landroid/widget/ImageView;

    .line 1180
    const v2, 0x7f060029

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;->textViewObj:Landroid/widget/TextView;

    .line 1181
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1186
    :goto_0
    iget-object v3, v1, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;->imageViewObj:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "THEME_IMAGE"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1187
    iget-object v3, v1, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;->textViewObj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/Launcher$ImageAdapter;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "THEME_NAME"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    return-object p2

    .line 1183
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemView:Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
    check-cast v1, Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;

    .restart local v1       #itemView:Lcom/android/launcher2/Launcher$ImageAdapter$ListItemView;
    goto :goto_0
.end method
