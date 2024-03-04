.class public final synthetic Lh3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lh3/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/b;

    invoke-direct {v0}, Lh3/b;-><init>()V

    sput-object v0, Lh3/b;->a:Lh3/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/k1;

    check-cast p2, Lcom/google/android/exoplayer2/k1;

    invoke-static {p1, p2}, Lh3/c;->m(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/k1;)I

    move-result p1

    return p1
.end method
