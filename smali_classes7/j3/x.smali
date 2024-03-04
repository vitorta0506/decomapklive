.class public final synthetic Lj3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lj3/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/x;

    invoke-direct {v0}, Lj3/x;-><init>()V

    sput-object v0, Lj3/x;->a:Lj3/x;

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

    check-cast p1, Lj3/z$b;

    check-cast p2, Lj3/z$b;

    invoke-static {p1, p2}, Lj3/z;->a(Lj3/z$b;Lj3/z$b;)I

    move-result p1

    return p1
.end method
