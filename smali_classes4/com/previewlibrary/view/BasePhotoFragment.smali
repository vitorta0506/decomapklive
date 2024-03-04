.class public Lcom/previewlibrary/view/BasePhotoFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static h:Lbd/c;


# instance fields
.field private a:Lcom/previewlibrary/enitity/IThumbViewInfo;

.field private b:Z

.field protected c:Lcom/previewlibrary/wight/SmoothImageView;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Lbd/b;

.field protected g:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/previewlibrary/view/BasePhotoFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->b:Z

    return-void
.end method

.method static synthetic P1(Lcom/previewlibrary/view/BasePhotoFragment;)Lcom/previewlibrary/enitity/IThumbViewInfo;
    .locals 0

    iget-object p0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    return-object p0
.end method

.method public static R1(FI)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0xff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static S1(Ljava/lang/Class;Lcom/previewlibrary/enitity/IThumbViewInfo;ZZZF)Lcom/previewlibrary/view/BasePhotoFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/previewlibrary/view/BasePhotoFragment;",
            ">;",
            "Lcom/previewlibrary/enitity/IThumbViewInfo;",
            "ZZZF)",
            "Lcom/previewlibrary/view/BasePhotoFragment;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/previewlibrary/view/BasePhotoFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance p0, Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-direct {p0}, Lcom/previewlibrary/view/BasePhotoFragment;-><init>()V

    .line 3
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_item"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "is_trans_photo"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "isSingleFling"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "isDrag"

    .line 7
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "sensitivity"

    .line 8
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 9
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private T1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "isSingleFling"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "key_item"

    .line 3
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/previewlibrary/enitity/IThumbViewInfo;

    iput-object v2, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    .line 4
    iget-object v2, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    const-string v3, "isDrag"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "sensitivity"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/previewlibrary/wight/SmoothImageView;->q(ZF)V

    .line 5
    iget-object v2, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    iget-object v3, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    invoke-interface {v3}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/previewlibrary/wight/SmoothImageView;->setThumbRect(Landroid/graphics/Rect;)V

    .line 6
    iget-object v2, p0, Lcom/previewlibrary/view/BasePhotoFragment;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    invoke-interface {v3}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v2, "is_trans_photo"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->b:Z

    .line 8
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    invoke-interface {v0}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {v0, v3}, Luk/co/senab2/photoview2/PhotoView;->setZoomable(Z)V

    .line 10
    invoke-static {}, Lcom/previewlibrary/a;->a()Lcom/previewlibrary/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/previewlibrary/a;->b()Lbd/a;

    move-result-object v0

    iget-object v2, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    invoke-interface {v2}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    iget-object v4, p0, Lcom/previewlibrary/view/BasePhotoFragment;->f:Lbd/b;

    invoke-interface {v0, p0, v2, v3, v4}, Lbd/a;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;Lbd/b;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/previewlibrary/a;->a()Lcom/previewlibrary/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/previewlibrary/a;->b()Lbd/a;

    move-result-object v0

    iget-object v2, p0, Lcom/previewlibrary/view/BasePhotoFragment;->a:Lcom/previewlibrary/enitity/IThumbViewInfo;

    invoke-interface {v2}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    iget-object v4, p0, Lcom/previewlibrary/view/BasePhotoFragment;->f:Lbd/b;

    invoke-interface {v0, p0, v2, v3, v4}, Lbd/a;->c(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/widget/ImageView;Lbd/b;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 12
    :goto_0
    iget-boolean v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->b:Z

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->d:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2}, Luk/co/senab2/photoview2/PhotoView;->setMinimumScale(F)V

    :goto_1
    if-eqz v1, :cond_3

    .line 15
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    new-instance v1, Lcom/previewlibrary/view/BasePhotoFragment$c;

    invoke-direct {v1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$c;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {v0, v1}, Luk/co/senab2/photoview2/PhotoView;->setOnViewTapListener(Luk/co/senab2/photoview2/c$i;)V

    .line 16
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    new-instance v1, Lcom/previewlibrary/view/BasePhotoFragment$d;

    invoke-direct {v1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$d;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {v0, v1}, Luk/co/senab2/photoview2/PhotoView;->setOnViewTapListener(Luk/co/senab2/photoview2/c$i;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    new-instance v1, Lcom/previewlibrary/view/BasePhotoFragment$e;

    invoke-direct {v1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$e;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {v0, v1}, Luk/co/senab2/photoview2/PhotoView;->setOnPhotoTapListener(Luk/co/senab2/photoview2/c$f;)V

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    new-instance v1, Lcom/previewlibrary/view/BasePhotoFragment$f;

    invoke-direct {v1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$f;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/previewlibrary/wight/SmoothImageView;->setAlphaChangeListener(Lcom/previewlibrary/wight/SmoothImageView$g;)V

    .line 19
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    new-instance v1, Lcom/previewlibrary/view/BasePhotoFragment$g;

    invoke-direct {v1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$g;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/previewlibrary/wight/SmoothImageView;->setTransformOutListener(Lcom/previewlibrary/wight/SmoothImageView$h;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 1
    sget v0, Lcom/previewlibrary/R$id;->loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->e:Landroid/view/View;

    .line 2
    sget v0, Lcom/previewlibrary/R$id;->photoView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/wight/SmoothImageView;

    iput-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    .line 3
    sget v0, Lcom/previewlibrary/R$id;->btnVideo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    .line 4
    sget v0, Lcom/previewlibrary/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment;->d:Landroid/view/View;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    new-instance v0, Lcom/previewlibrary/view/BasePhotoFragment$a;

    invoke-direct {v0, p0}, Lcom/previewlibrary/view/BasePhotoFragment$a;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p1, Lcom/previewlibrary/view/BasePhotoFragment$b;

    invoke-direct {p1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$b;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment;->f:Lbd/b;

    return-void
.end method


# virtual methods
.method public Q1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-static {}, Lcom/previewlibrary/wight/SmoothImageView;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public U1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->b:Z

    return-void
.end method

.method public V1()V
    .locals 2

    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    new-instance v1, Lcom/previewlibrary/view/BasePhotoFragment$h;

    invoke-direct {v1, p0}, Lcom/previewlibrary/view/BasePhotoFragment$h;-><init>(Lcom/previewlibrary/view/BasePhotoFragment;)V

    invoke-virtual {v0, v1}, Lcom/previewlibrary/wight/SmoothImageView;->s(Lcom/previewlibrary/wight/SmoothImageView$j;)V

    return-void
.end method

.method public W1(Lcom/previewlibrary/wight/SmoothImageView$j;)V
    .locals 1

    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {v0, p1}, Lcom/previewlibrary/wight/SmoothImageView;->t(Lcom/previewlibrary/wight/SmoothImageView$j;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p3, Lcom/previewlibrary/R$layout;->fragment_image_photo_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/previewlibrary/a;->a()Lcom/previewlibrary/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/previewlibrary/a;->b()Lbd/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lbd/a;->a(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/previewlibrary/view/BasePhotoFragment;->h:Lbd/c;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Lcom/previewlibrary/view/BasePhotoFragment;->U1()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-static {}, Lcom/previewlibrary/a;->a()Lcom/previewlibrary/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/previewlibrary/a;->b()Lbd/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lbd/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/previewlibrary/view/BasePhotoFragment;->initView(Landroid/view/View;)V

    .line 3
    invoke-direct {p0}, Lcom/previewlibrary/view/BasePhotoFragment;->T1()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method
