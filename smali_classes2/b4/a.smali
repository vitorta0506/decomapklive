.class public final synthetic Lb4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lb4/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lb4/a;

    invoke-direct {v0}, Lb4/a;-><init>()V

    sput-object v0, Lb4/a;->a:Lb4/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/Feature;

    check-cast p2, Lcom/google/android/gms/common/Feature;

    sget-object v0, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/Feature;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->I()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/common/Feature;->I()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->K()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/Feature;->K()J

    move-result-wide p1

    cmp-long p1, v0, p1

    :goto_0
    return p1
.end method
