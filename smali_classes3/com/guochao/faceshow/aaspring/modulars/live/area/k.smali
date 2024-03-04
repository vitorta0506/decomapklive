.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/area/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/k;->a:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/k;->a:Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$setContentLay$1;->b(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)I

    move-result p1

    return p1
.end method
