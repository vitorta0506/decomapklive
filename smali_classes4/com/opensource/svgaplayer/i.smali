.class public final synthetic Lcom/opensource/svgaplayer/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field public final synthetic b:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/i;->a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/i;->b:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/opensource/svgaplayer/i;->a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/i;->b:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    invoke-static {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;->a(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method
