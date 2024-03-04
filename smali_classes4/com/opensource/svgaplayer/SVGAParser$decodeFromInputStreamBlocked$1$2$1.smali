.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStreamBlocked(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field final synthetic $videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGAParser"

    const-string v2, "decode from input stream, inflate end"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->$videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStreamBlocked$1$2$1;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->access$invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method
