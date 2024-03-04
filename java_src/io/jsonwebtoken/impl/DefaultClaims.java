package io.jsonwebtoken.impl;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.RequiredTypeException;
import java.util.Date;
import java.util.Map;
/* loaded from: classes6.dex */
public class DefaultClaims extends JwtMap implements Claims {
    public DefaultClaims() {
    }

    private <T> T castClaimValue(Object obj, Class<T> cls) {
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            if (cls == Long.class) {
                obj = Long.valueOf(intValue);
            } else if (cls == Short.class && -32768 <= intValue && intValue <= 32767) {
                obj = Short.valueOf((short) intValue);
            } else if (cls == Byte.class && -128 <= intValue && intValue <= 127) {
                obj = Byte.valueOf((byte) intValue);
            }
        }
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        throw new RequiredTypeException("Expected value to be of type: " + cls + ", but was " + obj.getClass());
    }

    private static boolean isSpecDate(String str) {
        return "exp".equals(str) || "iat".equals(str) || Claims.NOT_BEFORE.equals(str);
    }

    @Override // io.jsonwebtoken.Claims
    public <T> T get(String str, Class<T> cls) {
        Object obj = get(str);
        if (obj == null) {
            return null;
        }
        if (Date.class.equals(cls)) {
            if (isSpecDate(str)) {
                obj = JwtMap.toSpecDate(obj, str);
            } else {
                obj = JwtMap.toDate(obj, str);
            }
        }
        return (T) castClaimValue(obj, cls);
    }

    @Override // io.jsonwebtoken.Claims
    public String getAudience() {
        return getString("aud");
    }

    @Override // io.jsonwebtoken.Claims
    public Date getExpiration() {
        return (Date) get("exp", Date.class);
    }

    @Override // io.jsonwebtoken.Claims
    public String getId() {
        return getString("jti");
    }

    @Override // io.jsonwebtoken.Claims
    public Date getIssuedAt() {
        return (Date) get("iat", Date.class);
    }

    @Override // io.jsonwebtoken.Claims
    public String getIssuer() {
        return getString("iss");
    }

    @Override // io.jsonwebtoken.Claims
    public Date getNotBefore() {
        return (Date) get(Claims.NOT_BEFORE, Date.class);
    }

    @Override // io.jsonwebtoken.Claims
    public String getSubject() {
        return getString("sub");
    }

    public DefaultClaims(Map<String, Object> map) {
        super(map);
    }

    @Override // io.jsonwebtoken.impl.JwtMap, java.util.Map
    public Object put(String str, Object obj) {
        if ((obj instanceof Date) && isSpecDate(str)) {
            return setDateAsSeconds(str, (Date) obj);
        }
        return super.put(str, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setAudience(String str) {
        setValue("aud", str);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setExpiration(Date date) {
        setDateAsSeconds("exp", date);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setId(String str) {
        setValue("jti", str);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setIssuedAt(Date date) {
        setDateAsSeconds("iat", date);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setIssuer(String str) {
        setValue("iss", str);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setNotBefore(Date date) {
        setDateAsSeconds(Claims.NOT_BEFORE, date);
        return this;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.jsonwebtoken.ClaimsMutator
    public Claims setSubject(String str) {
        setValue("sub", str);
        return this;
    }
}
