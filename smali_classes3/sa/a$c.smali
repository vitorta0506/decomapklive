.class Lsa/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/a;->l(Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/ViewGroup;IIILsa/a$i;)V
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

    iput-object p1, p0, Lsa/a$c;->b:Lsa/a;

    iput-object p2, p0, Lsa/a$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lsa/a$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lsa/a$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setVideoItem(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lsa/a$c;->b:Lsa/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsa/a;->a(Lsa/a;Z)Z

    .line 4
    iget-object p1, p0, Lsa/a$c;->b:Lsa/a;

    invoke-static {p1}, Lsa/a;->b(Lsa/a;)V

    :goto_0
    return-void
.end method
