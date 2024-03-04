.class public final synthetic Lcom/opensource/svgaplayer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGAParser;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/e;->a:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/e;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/opensource/svgaplayer/e;->c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-object p4, p0, Lcom/opensource/svgaplayer/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/opensource/svgaplayer/e;->a:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/e;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/opensource/svgaplayer/e;->c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-object v3, p0, Lcom/opensource/svgaplayer/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->g(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method
