.class public final synthetic Lcom/opensource/svgaplayer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGAParser;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/f;->a:Lcom/opensource/svgaplayer/SVGAParser;

    iput-object p2, p0, Lcom/opensource/svgaplayer/f;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/opensource/svgaplayer/f;->c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iput-boolean p4, p0, Lcom/opensource/svgaplayer/f;->d:Z

    iput-object p5, p0, Lcom/opensource/svgaplayer/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/opensource/svgaplayer/f;->a:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v1, p0, Lcom/opensource/svgaplayer/f;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/opensource/svgaplayer/f;->c:Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    iget-boolean v3, p0, Lcom/opensource/svgaplayer/f;->d:Z

    iget-object v4, p0, Lcom/opensource/svgaplayer/f;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/opensource/svgaplayer/SVGAParser;->d(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLjava/lang/String;)V

    return-void
.end method
