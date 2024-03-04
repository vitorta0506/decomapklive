.class public final Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u000bH\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\u0004R\u001a\u0010\u0013\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;",
        "",
        "id",
        "",
        "(I)V",
        "iconId",
        "getIconId",
        "()I",
        "setIconId",
        "getId",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "titleColor",
        "getTitleColor",
        "setTitleColor",
        "titleId",
        "getTitleId",
        "setTitleId",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private iconId:I

.field private final id:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private titleColor:I

.field private titleId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->titleId:I

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->iconId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;IILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->copy(I)Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    return v0
.end method

.method public final copy(I)Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    iget p1, p1, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getIconId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->iconId:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->titleColor:I

    return v0
.end method

.method public final getTitleId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->titleId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    return v0
.end method

.method public final setIconId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->iconId:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->titleColor:I

    return-void
.end method

.method public final setTitleId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->titleId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/titlebar/MenuItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
