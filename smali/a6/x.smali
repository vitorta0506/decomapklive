.class public final synthetic La6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:La6/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, La6/x;

    invoke-direct {v0}, La6/x;-><init>()V

    sput-object v0, La6/x;->a:La6/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, La6/y;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
