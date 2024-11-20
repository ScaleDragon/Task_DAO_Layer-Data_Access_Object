package ru.netology.task_dao_layerdata_access_object;

import lombok.AllArgsConstructor;

import java.util.List;

@org.springframework.stereotype.Service
@AllArgsConstructor
public class Service {
    private Repository repository;

    protected List<String> getProductName(String name) {
        return repository.getProductName(name);
    }
}
