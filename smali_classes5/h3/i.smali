.class public final synthetic Lh3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lh3/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/i;

    invoke-direct {v0}, Lh3/i;-><init>()V

    sput-object v0, Lh3/i;->a:Lh3/i;

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

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lh3/m;->t(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
