.class public Lcom/google/api/gax/tracing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/tracing/ApiTracerFactory;


# static fields
.field private static final a:Lcom/google/api/gax/tracing/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/api/gax/tracing/a;

    invoke-direct {v0}, Lcom/google/api/gax/tracing/a;-><init>()V

    sput-object v0, Lcom/google/api/gax/tracing/a;->a:Lcom/google/api/gax/tracing/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/api/gax/tracing/a;
    .locals 1

    sget-object v0, Lcom/google/api/gax/tracing/a;->a:Lcom/google/api/gax/tracing/a;

    return-object v0
.end method


# virtual methods
.method public a(Lr5/a;Lr5/d;Lcom/google/api/gax/tracing/ApiTracerFactory$OperationType;)Lr5/a;
    .locals 0

    invoke-static {}, Lr5/c;->h()Lr5/a;

    move-result-object p1

    return-object p1
.end method
