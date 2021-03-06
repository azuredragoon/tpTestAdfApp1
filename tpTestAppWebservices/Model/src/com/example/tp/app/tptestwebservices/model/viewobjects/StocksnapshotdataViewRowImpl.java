package com.example.tp.app.tptestwebservices.model.viewobjects;

import java.math.BigDecimal;

import java.sql.Date;

import oracle.jbo.Row;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.SequenceImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Jun 02 16:52:46 PDT 2017
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class StocksnapshotdataViewRowImpl extends ViewRowImpl {
    /**
     * This is the default constructor (do not remove).
     */
    public StocksnapshotdataViewRowImpl() {
    }

    /**
     * Gets Stocksnapshotdata entity object.
     * @return the Stocksnapshotdata
     */
    public EntityImpl getStocksnapshotdata() {
        return (EntityImpl)getEntity(0);
    }
    @Override
    public void setNewRowState(byte state) {
        if (state != Row.STATUS_INITIALIZED || getNewRowState() != Row.STATUS_NEW)
        { super.setNewRowState(state); }
        }
    
    public Number getSequenceNumber(String sequenceName){
        Number sequenceValue = new Number(0);
        if (sequenceName != null && ! sequenceName.isEmpty()){
            
            SequenceImpl sequenceImpl = new SequenceImpl(sequenceName,getDBTransaction());
            sequenceValue = sequenceImpl.getSequenceNumber();
            }
        return sequenceValue;
    }
}
