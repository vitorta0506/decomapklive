.class Lsa/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/a;->i(Lcom/opensource/svgaplayer/SVGAImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic b:Lsa/a;


# direct methods
.method constructor <init>(Lsa/a;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    iput-object p1, p0, Lsa/a$a;->b:Lsa/a;

    iput-object p2, p0, Lsa/a$a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/a$a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->getMVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lsa/a$a;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4
    iget-object v0, p0, Lsa/a$a;->b:Lsa/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsa/a;->a(Lsa/a;Z)Z

    .line 5
    iget-object v0, p0, Lsa/a$a;->b:Lsa/a;

    invoke-static {v0}, Lsa/a;->b(Lsa/a;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
