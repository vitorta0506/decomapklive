.class public final synthetic Lcom/opensource/svgaplayer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/d;->a:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/opensource/svgaplayer/d;->a:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    invoke-static {v0}, Lcom/opensource/svgaplayer/SVGAParser;->e(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    return-void
.end method
