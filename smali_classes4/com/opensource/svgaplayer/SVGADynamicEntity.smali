.class public final Lcom/opensource/svgaplayer/SVGADynamicEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010<\u001a\u00020=J\u000e\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0005J\u0014\u0010>\u001a\u00020=2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00050@JF\u0010A\u001a\u00020=26\u0010B\u001a2\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\r2\u0006\u0010C\u001a\u00020\u0005Jp\u0010D\u001a\u00020=2`\u0010B\u001a\\\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00140\u00182\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010E\u001a\u00020=2\u0006\u0010F\u001a\u00020%2\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010E\u001a\u00020=2\u0006\u0010G\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010H\u001a\u00020=2\u0006\u0010I\u001a\u00020)2\u0006\u0010C\u001a\u00020\u0005J\u001e\u0010H\u001a\u00020=2\u0006\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u0002002\u0006\u0010C\u001a\u00020\u0005J\u0016\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020\u00142\u0006\u0010C\u001a\u00020\u0005R6\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0096\u0001\u0010\u000c\u001a~\u0012\u0004\u0012\u00020\u0005\u00124\u00122\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\r0\u0004j>\u0012\u0004\u0012\u00020\u0005\u00124\u00122\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u00140\r`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u000bR\u00eb\u0001\u0010\u0017\u001a\u00d2\u0001\u0012\u0004\u0012\u00020\u0005\u0012^\u0012\\\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00140\u00180\u0004jh\u0012\u0004\u0012\u00020\u0005\u0012^\u0012\\\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0013\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00140\u0018`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\t\"\u0004\u0008\u001c\u0010\u000bR6\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00140\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\t\"\u0004\u0008\u001f\u0010\u000bR6\u0010 \u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020!0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020!`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\t\"\u0004\u0008#\u0010\u000bR6\u0010$\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020%0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020%`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\t\"\u0004\u0008\'\u0010\u000bR6\u0010(\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020)0\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020)`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\t\"\u0004\u0008+\u0010\u000bR6\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\t\"\u0004\u0008.\u0010\u000bR6\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002000\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u000200`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\t\"\u0004\u00082\u0010\u000bR\u001a\u00103\u001a\u00020\u0014X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R6\u00108\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002090\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u000209`\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\t\"\u0004\u0008;\u0010\u000b\u00a8\u0006N"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "",
        "()V",
        "dynamicBoringLayoutText",
        "Ljava/util/HashMap;",
        "",
        "Landroid/text/BoringLayout;",
        "Lkotlin/collections/HashMap;",
        "getDynamicBoringLayoutText$com_opensource_svgaplayer",
        "()Ljava/util/HashMap;",
        "setDynamicBoringLayoutText$com_opensource_svgaplayer",
        "(Ljava/util/HashMap;)V",
        "dynamicDrawer",
        "Lkotlin/Function2;",
        "Landroid/graphics/Canvas;",
        "Lkotlin/ParameterName;",
        "name",
        "canvas",
        "",
        "frameIndex",
        "",
        "getDynamicDrawer$com_opensource_svgaplayer",
        "setDynamicDrawer$com_opensource_svgaplayer",
        "dynamicDrawerSized",
        "Lkotlin/Function4;",
        "width",
        "height",
        "getDynamicDrawerSized$com_opensource_svgaplayer",
        "setDynamicDrawerSized$com_opensource_svgaplayer",
        "dynamicHidden",
        "getDynamicHidden$com_opensource_svgaplayer",
        "setDynamicHidden$com_opensource_svgaplayer",
        "dynamicIClickArea",
        "Lcom/opensource/svgaplayer/IClickAreaListener;",
        "getDynamicIClickArea$com_opensource_svgaplayer",
        "setDynamicIClickArea$com_opensource_svgaplayer",
        "dynamicImage",
        "Landroid/graphics/Bitmap;",
        "getDynamicImage$com_opensource_svgaplayer",
        "setDynamicImage$com_opensource_svgaplayer",
        "dynamicStaticLayoutText",
        "Landroid/text/StaticLayout;",
        "getDynamicStaticLayoutText$com_opensource_svgaplayer",
        "setDynamicStaticLayoutText$com_opensource_svgaplayer",
        "dynamicText",
        "getDynamicText$com_opensource_svgaplayer",
        "setDynamicText$com_opensource_svgaplayer",
        "dynamicTextPaint",
        "Landroid/text/TextPaint;",
        "getDynamicTextPaint$com_opensource_svgaplayer",
        "setDynamicTextPaint$com_opensource_svgaplayer",
        "isTextDirty",
        "isTextDirty$com_opensource_svgaplayer",
        "()Z",
        "setTextDirty$com_opensource_svgaplayer",
        "(Z)V",
        "mClickMap",
        "",
        "getMClickMap$com_opensource_svgaplayer",
        "setMClickMap$com_opensource_svgaplayer",
        "clearDynamicObjects",
        "",
        "setClickArea",
        "clickKey",
        "",
        "setDynamicDrawer",
        "drawer",
        "forKey",
        "setDynamicDrawerSized",
        "setDynamicImage",
        "bitmap",
        "url",
        "setDynamicText",
        "layoutText",
        "text",
        "textPaint",
        "setHidden",
        "value",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private dynamicBoringLayoutText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/BoringLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicDrawer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicDrawerSized:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicHidden:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicIClickArea:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/opensource/svgaplayer/IClickAreaListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicImage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicStaticLayoutText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dynamicTextPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isTextDirty:Z

.field private mClickMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicBoringLayoutText:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->mClickMap:Ljava/util/HashMap;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Lcom/opensource/svgaplayer/SVGADynamicEntity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setDynamicImage$lambda-4$lambda-3$lambda-2$lambda-1$lambda-0(Lcom/opensource/svgaplayer/SVGADynamicEntity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Landroid/os/Handler;Lcom/opensource/svgaplayer/SVGADynamicEntity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setDynamicImage$lambda-4(Ljava/lang/String;Landroid/os/Handler;Lcom/opensource/svgaplayer/SVGADynamicEntity;Ljava/lang/String;)V

    return-void
.end method

.method private static final setDynamicImage$lambda-4(Ljava/lang/String;Landroid/os/Handler;Lcom/opensource/svgaplayer/SVGADynamicEntity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$forKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    const/16 v0, 0x4e20

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "GET"

    .line 3
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v3, Lcom/opensource/svgaplayer/a;

    invoke-direct {v3, p2, v2, p3}, Lcom/opensource/svgaplayer/a;-><init>(Lcom/opensource/svgaplayer/SVGADynamicEntity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 10
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 11
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_3
    :goto_3
    return-void

    .line 12
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 13
    :catchall_4
    throw p1
.end method

.method private static final setDynamicImage$lambda-4$lambda-3$lambda-2$lambda-1$lambda-0(Lcom/opensource/svgaplayer/SVGADynamicEntity;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setDynamicImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clearDynamicObjects()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicBoringLayoutText:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->mClickMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getDynamicBoringLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/BoringLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicBoringLayoutText:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicDrawer$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicDrawerSized$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicHidden$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicIClickArea$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/opensource/svgaplayer/IClickAreaListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicImage$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicStaticLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicText$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDynamicTextPaint$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMClickMap$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->mClickMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final isTextDirty$com_opensource_svgaplayer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    return v0
.end method

.method public final setClickArea(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clickKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    new-instance v1, Lcom/opensource/svgaplayer/SVGADynamicEntity$setClickArea$2;

    invoke-direct {v1, p0}, Lcom/opensource/svgaplayer/SVGADynamicEntity$setClickArea$2;-><init>(Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setClickArea(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    new-instance v2, Lcom/opensource/svgaplayer/SVGADynamicEntity$setClickArea$1;

    invoke-direct {v2, p0}, Lcom/opensource/svgaplayer/SVGADynamicEntity$setClickArea$1;-><init>(Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setDynamicBoringLayoutText$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/BoringLayout;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicBoringLayoutText:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicDrawer(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/graphics/Canvas;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "drawer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDynamicDrawer$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawer:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicDrawerSized(Lkotlin/jvm/functions/Function4;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function4;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroid/graphics/Canvas;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "drawer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDynamicDrawerSized$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicDrawerSized:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicHidden$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicIClickArea$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/opensource/svgaplayer/IClickAreaListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicIClickArea:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDynamicImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3
    sget-object v1, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->getThreadPoolExecutor$com_opensource_svgaplayer()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/opensource/svgaplayer/b;

    invoke-direct {v2, p1, v0, p0, p2}, Lcom/opensource/svgaplayer/b;-><init>(Ljava/lang/String;Landroid/os/Handler;Lcom/opensource/svgaplayer/SVGADynamicEntity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDynamicImage$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicImage:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicStaticLayoutText$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/StaticLayout;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicText(Landroid/text/BoringLayout;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/text/BoringLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    .line 7
    invoke-virtual {p1}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/BoringLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicBoringLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/BoringLayout;

    :goto_0
    return-void
.end method

.method public final setDynamicText(Landroid/text/StaticLayout;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/text/StaticLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    .line 5
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicStaticLayoutText:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDynamicText(Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDynamicText$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicText:Ljava/util/HashMap;

    return-void
.end method

.method public final setDynamicTextPaint$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicTextPaint:Ljava/util/HashMap;

    return-void
.end method

.method public final setHidden(ZLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "forKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->dynamicHidden:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setMClickMap$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->mClickMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setTextDirty$com_opensource_svgaplayer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty:Z

    return-void
.end method
