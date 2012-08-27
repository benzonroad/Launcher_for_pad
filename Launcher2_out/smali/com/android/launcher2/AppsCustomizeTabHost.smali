.class public Lcom/android/launcher2/AppsCustomizeTabHost;
.super Landroid/widget/TabHost;
.source "AppsCustomizeTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/launcher2/LauncherTransitionable;


# instance fields
.field private mAnimationBuffer:Landroid/widget/FrameLayout;

.field private mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInTransition:Z

.field private mLauncherTransition:Landroid/animation/Animator;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResetAfterTransition:Z

.field private mScrallbar:Landroid/widget/ImageView;

.field private mScrallbarBg:Landroid/widget/ImageView;

.field private mScro:Lcom/android/launcher2/ScrollBar;

.field private mSuppressContentCallback:Z

.field private mTabs:Landroid/view/ViewGroup;

.field private mTabsContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizeTabHost;)Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->reloadCurrentPage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/AppsCustomizeTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AppsCustomizeTabHost;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    return-void
.end method

.method private enableAndBuildHardwareLayer()V
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->buildLayer()V

    .line 441
    :cond_0
    return-void
.end method

.method private onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 4
    .parameter "type"

    .prologue
    .line 229
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 230
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumWidgetPages()I

    move-result v2

    .line 231
    .local v2, totalPages:I
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getmNumAppsPages()I

    move-result v0

    .line 232
    .local v0, appNumPages:I
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    .line 233
    .local v1, currentPage:I
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/launcher2/ScrollBar;->scrollLeftOrRight(III)V

    .line 234
    return-void
.end method

.method private onTabChangedStart()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 218
    return-void
.end method

.method private reloadCurrentPage()V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->flashScrollingIndicator(Z)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->requestFocus()Z

    .line 226
    return-void
.end method

.method private setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedStart()V

    .line 104
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->onTabChangedEnd(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    .locals 1
    .parameter "tag"

    .prologue
    .line 388
    const-string v0, "APPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    .line 393
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const-string v0, "WIDGETS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    goto :goto_0

    .line 393
    :cond_1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const/high16 v0, 0x6

    .line 416
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 400
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 401
    const-string v0, "APPS"

    .line 405
    :goto_0
    return-object v0

    .line 402
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 403
    const-string v0, "WIDGETS"

    goto :goto_0

    .line 405
    :cond_1
    const-string v0, "APPS"

    goto :goto_0
.end method

.method public getmAppsCustomizePane()Lcom/android/launcher2/AppsCustomizePagedView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    return-object v0
.end method

.method public getmScro()Lcom/android/launcher2/ScrollBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    return-object v0
.end method

.method isTransitioning()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setup()V

    .line 123
    const v11, 0x7f060007

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 124
    .local v9, tabsContainer:Landroid/view/ViewGroup;
    const v11, 0x1020013

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabWidget;

    .line 125
    .local v8, tabs:Landroid/widget/TabWidget;
    const v11, 0x7f060009

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView;

    .line 127
    .local v0, appsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;
    iput-object v8, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    .line 128
    const v11, 0x7f06000d

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/ScrollBar;

    iput-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    .line 130
    iput-object v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    .line 131
    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    .line 132
    const v11, 0x7f06000a

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    iput-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAnimationBuffer:Landroid/widget/FrameLayout;

    .line 133
    const v11, 0x7f060006

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    .line 134
    const v11, 0x7f06000e

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScrallbarBg:Landroid/widget/ImageView;

    .line 135
    const v11, 0x7f06000b

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScrallbar:Landroid/widget/ImageView;

    .line 136
    if-eqz v8, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    if-nez v11, :cond_1

    :cond_0
    new-instance v11, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v11}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v11

    .line 139
    :cond_1
    new-instance v1, Lcom/android/launcher2/AppsCustomizeTabHost$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost$1;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 147
    .local v1, contentFactory:Landroid/widget/TabHost$TabContentFactory;
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContext:Landroid/content/Context;

    const v12, 0x7f0c001e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, label:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 149
    .local v7, tabView:Landroid/widget/TextView;
    const/high16 v11, 0x41a0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02006b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    const-string v11, "APPS"

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 154
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0007

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .end local v7           #tabView:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 156
    .restart local v7       #tabView:Landroid/widget/TextView;
    const/high16 v11, 0x41a0

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 157
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02006b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    const-string v11, "WIDGETS"

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 161
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 164
    new-instance v3, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;-><init>()V

    .line 165
    .local v3, keyListener:Lcom/android/launcher2/AppsCustomizeTabKeyEventListener;
    invoke-virtual {v8}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    .line 166
    .local v5, lastTab:Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 167
    const v11, 0x7f060008

    invoke-virtual {p0, v11}, Lcom/android/launcher2/AppsCustomizeTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 168
    .local v6, shopButton:Landroid/view/View;
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02006a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 171
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher2/AccessibleTabView;

    if-eqz v11, :cond_2

    .line 172
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AccessibleTabView;

    .line 173
    .local v10, v:Lcom/android/launcher2/AccessibleTabView;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTab()I

    move-result v11

    if-ne v2, v11, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AccessibleTabView;->setTextColor(I)V

    .line 170
    .end local v10           #v:Lcom/android/launcher2/AccessibleTabView;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .restart local v10       #v:Lcom/android/launcher2/AccessibleTabView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/AccessibleTabView;->setTextColor(I)V

    goto :goto_1

    .line 181
    .end local v10           #v:Lcom/android/launcher2/AccessibleTabView;
    :cond_4
    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabsContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 182
    return-void
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)V
    .locals 3
    .parameter "l"
    .parameter "animation"
    .parameter "toWorkspace"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 489
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 490
    if-eqz p2, :cond_0

    .line 491
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setLayerType(ILandroid/graphics/Paint;)V

    .line 494
    :cond_0
    if-nez p3, :cond_1

    .line 496
    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->showAllAppsCling()V

    .line 500
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 502
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->hideScrollingIndicator(Z)V

    .line 506
    :cond_1
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;Landroid/animation/Animator;Z)Z
    .locals 6
    .parameter "l"
    .parameter "animation"
    .parameter "toWorkspace"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 455
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, delayLauncherTransitionUntilLayout:Z
    if-eqz p2, :cond_5

    move v0, v2

    .line 458
    .local v0, animated:Z
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    .line 462
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 463
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    .line 464
    const/4 v1, 0x1

    .line 466
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    if-nez p3, :cond_1

    .line 471
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 473
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 474
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 477
    :cond_2
    if-nez p3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_3

    .line 478
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->showScrollingIndicator(Z)V

    .line 480
    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    if-eqz v2, :cond_4

    .line 481
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    .line 482
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 484
    :cond_4
    return v1

    .end local v0           #animated:Z
    :cond_5
    move v0, v3

    .line 457
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 444
    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    .line 445
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->enableAndBuildHardwareLayer()V

    .line 447
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mLauncherTransition:Landroid/animation/Animator;

    .line 450
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_1

    const/4 v1, 0x1

    .line 187
    .local v1, remeasureTabWidth:Z
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 190
    if-eqz v1, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v0

    .line 192
    .local v0, contentWidth:I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    new-instance v2, Lcom/android/launcher2/AppsCustomizeTabHost$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AppsCustomizeTabHost$2;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 203
    .end local v0           #contentWidth:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onMeasure(II)V

    .line 204
    return-void

    .line 186
    .end local v1           #remeasureTabWidth:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(IZ)V

    .line 514
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->loadAssociatedPages(I)V

    .line 516
    :cond_0
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 11
    .parameter "tabId"

    .prologue
    const v10, 0x7f020071

    const/4 v9, 0x0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentTypeForTabTag(Ljava/lang/String;)Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    move-result-object v4

    .line 239
    .local v4, type:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    iget-boolean v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    if-eqz v6, :cond_0

    .line 240
    iput-boolean v9, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    .line 355
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02006a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/AccessibleTabView;

    if-eqz v6, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AccessibleTabView;

    .line 246
    .local v0, at:Lcom/android/launcher2/AccessibleTabView;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/launcher2/AccessibleTabView;->setTextColor(I)V

    .line 248
    .end local v0           #at:Lcom/android/launcher2/AccessibleTabView;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 250
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTab()I

    move-result v6

    if-eq v2, v6, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    instance-of v6, v5, Lcom/android/launcher2/AccessibleTabView;

    if-eqz v6, :cond_2

    move-object v0, v5

    .line 253
    check-cast v0, Lcom/android/launcher2/AccessibleTabView;

    .line 254
    .restart local v0       #at:Lcom/android/launcher2/AccessibleTabView;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/launcher2/AccessibleTabView;->setTextColor(I)V

    .line 248
    .end local v0           #at:Lcom/android/launcher2/AccessibleTabView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v5           #v:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIDGETS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 259
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    invoke-virtual {v6, v9}, Lcom/android/launcher2/ScrollBar;->setVisibility(I)V

    .line 260
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppsCustomizePagedView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 267
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f090013

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 271
    .local v1, duration:I
    new-instance v6, Lcom/android/launcher2/AppsCustomizeTabHost$3;

    invoke-direct {v6, p0, v4, v1}, Lcom/android/launcher2/AppsCustomizeTabHost$3;-><init>(Lcom/android/launcher2/AppsCustomizeTabHost;Lcom/android/launcher2/AppsCustomizePagedView$ContentType;I)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppsCustomizeTabHost;->post(Ljava/lang/Runnable;)Z

    .line 354
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppsCustomizePagedView;->setmSaveInstanceStateItemIndex(I)V

    goto/16 :goto_0

    .line 262
    .end local v1           #duration:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ScrollBar;->setVisibility(I)V

    .line 263
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppsCustomizePagedView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrimMemory()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->clearAllWidgetPages()V

    .line 523
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mInTransition:Z

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mResetAfterTransition:Z

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView;->reset()V

    goto :goto_0
.end method

.method selectAppsTab()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 108
    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method selectWidgetsTab()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentTypeImmediate(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 112
    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 7
    .parameter "type"

    .prologue
    const v6, 0x7f020071

    .line 358
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mSuppressContentCallback:Z

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/AccessibleTabView;

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AccessibleTabView;

    .line 363
    .local v0, at:Lcom/android/launcher2/AccessibleTabView;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AccessibleTabView;->setTextColor(I)V

    .line 365
    .end local v0           #at:Lcom/android/launcher2/AccessibleTabView;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 366
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mTabs:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 367
    .local v2, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTab()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    instance-of v3, v2, Lcom/android/launcher2/AccessibleTabView;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 370
    check-cast v0, Lcom/android/launcher2/AccessibleTabView;

    .line 371
    .restart local v0       #at:Lcom/android/launcher2/AccessibleTabView;
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AccessibleTabView;->setTextColor(I)V

    .line 365
    .end local v0           #at:Lcom/android/launcher2/AccessibleTabView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v2           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIDGETS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ScrollBar;->setVisibility(I)V

    .line 377
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    :goto_1
    return-void

    .line 379
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mScro:Lcom/android/launcher2/ScrollBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ScrollBar;->setVisibility(I)V

    .line 380
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizeTabHost;->mAppsCustomizePane:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
