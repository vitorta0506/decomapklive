.class Lcom/guochao/faceshow/views/GitVerticalViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/GitVerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/guochao/faceshow/views/GitVerticalViewPager$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/GitVerticalViewPager$d;Lcom/guochao/faceshow/views/GitVerticalViewPager$d;)I
    .locals 0

    iget p1, p1, Lcom/guochao/faceshow/views/GitVerticalViewPager$d;->b:I

    iget p2, p2, Lcom/guochao/faceshow/views/GitVerticalViewPager$d;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/views/GitVerticalViewPager$d;

    check-cast p2, Lcom/guochao/faceshow/views/GitVerticalViewPager$d;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/views/GitVerticalViewPager$a;->a(Lcom/guochao/faceshow/views/GitVerticalViewPager$d;Lcom/guochao/faceshow/views/GitVerticalViewPager$d;)I

    move-result p1

    return p1
.end method
