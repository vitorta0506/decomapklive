.class public Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcvodplayer/renderer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;,
        Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

.field private b:Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 2
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;)V

    iput-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/b;->a(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/liteav/txcvodplayer/renderer/a$a;)V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;

    .line 5
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->f:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->a:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$a;

    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;

    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 8
    invoke-interface {p1, v1}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-boolean v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->b:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    .line 10
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$a;

    iget-object v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;

    iget-object v3, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->a:Landroid/view/SurfaceHolder;

    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$a;-><init>(Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 11
    :cond_1
    iget v2, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->c:I

    iget v0, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->d:I

    invoke-interface {p1, v1, v2, v0}, Lcom/tencent/liteav/txcvodplayer/renderer/a$a;->a(Lcom/tencent/liteav/txcvodplayer/renderer/a$b;II)V

    :cond_2
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/liteav/txcvodplayer/renderer/a$a;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->b:Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;

    .line 8
    iget-object v0, v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView$b;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3
    const-class v0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c(II)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 3
    iget p2, p1, Lcom/tencent/liteav/txcvodplayer/renderer/b;->b:I

    .line 4
    iget p1, p1, Lcom/tencent/liteav/txcvodplayer/renderer/b;->c:I

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/renderer/SurfaceRenderView;->a:Lcom/tencent/liteav/txcvodplayer/renderer/b;

    .line 2
    iput p1, v0, Lcom/tencent/liteav/txcvodplayer/renderer/b;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceView doesn\'t support rotation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
