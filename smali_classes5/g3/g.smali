.class public final synthetic Lg3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lg3/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg3/g;

    invoke-direct {v0}, Lg3/g;-><init>()V

    sput-object v0, Lg3/g;->a:Lg3/g;

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

    check-cast p1, Lg3/f$b;

    check-cast p2, Lg3/f$b;

    invoke-static {p1, p2}, Lg3/f$b;->a(Lg3/f$b;Lg3/f$b;)I

    move-result p1

    return p1
.end method
