.class Lsa/a$f;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/a;->m(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

.field final synthetic b:Lsa/a;


# direct methods
.method constructor <init>(Lsa/a;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 0

    iput-object p1, p0, Lsa/a$f;->b:Lsa/a;

    iput-object p2, p0, Lsa/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-direct {p0}, Ls0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lsa/a$f;->b:Lsa/a;

    iget-object v1, p0, Lsa/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-static {v0, p1, v1}, Lsa/a;->g(Lsa/a;Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lsa/a$f;->b:Lsa/a;

    iget-object v0, p0, Lsa/a$f;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-static {p2, p1, v0}, Lsa/a;->g(Lsa/a;Landroid/graphics/drawable/Drawable;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lsa/a$f;->onResourceReady(Landroid/graphics/drawable/Drawable;Lt0/f;)V

    return-void
.end method
