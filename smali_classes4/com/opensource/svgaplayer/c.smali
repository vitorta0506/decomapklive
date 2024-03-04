.class public final synthetic Lcom/opensource/svgaplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field public final synthetic b:Lcom/opensource/svgaplayer/SVGAImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/c;->a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/c;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/opensource/svgaplayer/c;->a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iget-object v1, p0, Lcom/opensource/svgaplayer/c;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->a(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method
