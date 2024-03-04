.class public final synthetic Ly2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Ly2/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/b;

    invoke-direct {v0}, Ly2/b;-><init>()V

    sput-object v0, Ly2/b;->a:Ly2/b;

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

    check-cast p1, Ly2/c$a;

    check-cast p2, Ly2/c$a;

    invoke-static {p1, p2}, Ly2/c$a;->a(Ly2/c$a;Ly2/c$a;)I

    move-result p1

    return p1
.end method
