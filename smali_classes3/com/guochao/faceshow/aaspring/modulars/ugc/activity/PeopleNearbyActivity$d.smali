.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->q0(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->a:I

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 3

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;)Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    const-string v0, ""

    if-ne p3, p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "longitude"

    invoke-virtual {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;)Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p2, "latitude"

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;D)D

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;D)D

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->a:I

    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->b:I

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;II)V

    return-void
.end method

.method public onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;)Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "longitude"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;)Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;D)D

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;D)D

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->a:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity$d;->b:I

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PeopleNearbyActivity;II)V

    return-void
.end method
