.class public final synthetic Lcom/opensource/svgaplayer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGAParser;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/g;->a:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/opensource/svgaplayer/g;->c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/opensource/svgaplayer/g;->a:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/opensource/svgaplayer/g;->c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    invoke-static {v0, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->c(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method
