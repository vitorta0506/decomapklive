.class public final synthetic Lcom/google/firebase/encoders/proto/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# static fields
.field public static final synthetic a:Lcom/google/firebase/encoders/proto/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/proto/c;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/c;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/proto/c;->a:Lcom/google/firebase/encoders/proto/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ld6/d;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/proto/d;->a(Ljava/util/Map$Entry;Ld6/d;)V

    return-void
.end method
