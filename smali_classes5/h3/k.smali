.class public final synthetic Lh3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lh3/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/k;

    invoke-direct {v0}, Lh3/k;-><init>()V

    sput-object v0, Lh3/k;->a:Lh3/k;

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

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lh3/m$g;->c(Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
