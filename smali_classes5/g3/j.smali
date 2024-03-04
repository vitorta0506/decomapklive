.class public final synthetic Lg3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lg3/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg3/j;

    invoke-direct {v0}, Lg3/j;-><init>()V

    sput-object v0, Lg3/j;->a:Lg3/j;

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

    check-cast p1, Lg3/e;

    check-cast p2, Lg3/e;

    invoke-static {p1, p2}, Lg3/k;->e(Lg3/e;Lg3/e;)I

    move-result p1

    return p1
.end method
