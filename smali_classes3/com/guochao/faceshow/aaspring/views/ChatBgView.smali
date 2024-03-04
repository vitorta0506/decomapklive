.class public Lcom/guochao/faceshow/aaspring/views/ChatBgView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;


# instance fields
.field a:Landroid/graphics/Rect;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a:Landroid/graphics/Rect;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a:Landroid/graphics/Rect;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a:Landroid/graphics/Rect;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v1, v3, v0, v2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/BitmapUtils;->makeNinePatchChunk(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->a:Landroid/graphics/Rect;

    move-object v1, v0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setVipChatBg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f080532

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->getNinePatch(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;)V

    :goto_0
    return-void
.end method
