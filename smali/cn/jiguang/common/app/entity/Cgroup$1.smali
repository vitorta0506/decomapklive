.class final Lcn/jiguang/common/app/entity/Cgroup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/common/app/entity/Cgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/jiguang/common/app/entity/Cgroup;",
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
.method public a(Landroid/os/Parcel;)Lcn/jiguang/common/app/entity/Cgroup;
    .locals 2

    new-instance v0, Lcn/jiguang/common/app/entity/Cgroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/jiguang/common/app/entity/Cgroup;-><init>(Landroid/os/Parcel;Lcn/jiguang/common/app/entity/Cgroup$1;)V

    return-object v0
.end method

.method public a(I)[Lcn/jiguang/common/app/entity/Cgroup;
    .locals 0

    new-array p1, p1, [Lcn/jiguang/common/app/entity/Cgroup;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/jiguang/common/app/entity/Cgroup$1;->a(Landroid/os/Parcel;)Lcn/jiguang/common/app/entity/Cgroup;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/jiguang/common/app/entity/Cgroup$1;->a(I)[Lcn/jiguang/common/app/entity/Cgroup;

    move-result-object p1

    return-object p1
.end method
