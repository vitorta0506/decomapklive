.class public Lcb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerVR SGX 544MP"

    const-string v1, "Adreno (TM) 306"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcb/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
