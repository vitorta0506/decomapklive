.class public Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/renderer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;,
        Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

.field private b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 2
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/renderer/a$a;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    .line 5
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;

    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V

    .line 8
    invoke-interface {p1, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-boolean v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->b:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;

    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V

    .line 11
    :cond_1
    iget v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->c:I

    iget v0, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->d:I

    invoke-interface {p1, v1, v2, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;II)V

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b(II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/liteav/txcvodplayer/renderer/a$a;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    .line 7
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSurfaceHolder()Lcom/tencent/liteav/txcvodplayer/renderer/a$b;
    .locals 3

    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->a(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/txcplayer/c;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    const-string v1, "TextureRenderView"

    const-string v2, "onAttachFromWindow()"

    .line 3
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->f:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->g:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const-string v0, "TextureRenderView"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    const-string/jumbo v2, "willDetachFromWindow()"

    .line 2
    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->f:Z

    .line 4
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;

    const-string v3, "didDetachFromWindow()"

    .line 6
    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-boolean v2, v1, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView$b;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c(II)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 3
    iget p2, p1, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 4
    iget p1, p1, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 2
    iput p1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/TextureRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 2
    iput p1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a:I

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    return-void
.end method
