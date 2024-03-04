.class final Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/io/InputStream;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"
    }
    d2 = {
        "Ljava/io/InputStream;",
        "it",
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
.field final synthetic $cacheKey:Ljava/lang/String;

.field final synthetic $callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field final synthetic this$0:Lcom/opensource/svgaplayer/SVGAParser;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->invoke(Ljava/io/InputStream;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/io/InputStream;)V
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGACache;->isDefaultCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$cacheKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->this$0:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$cacheKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;->$callback:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->_decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    :goto_0
    return-void
.end method
